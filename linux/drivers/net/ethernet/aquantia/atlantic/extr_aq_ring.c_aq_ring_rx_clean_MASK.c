#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; int /*<<< orphan*/  errors; } ;
struct TYPE_5__ {TYPE_1__ rx; } ;
struct aq_ring_s {size_t sw_head; size_t hw_head; TYPE_2__ stats; int /*<<< orphan*/  idx; int /*<<< orphan*/  aq_nic; struct aq_ring_buff_s* buff_ring; } ;
struct TYPE_6__ {scalar_t__ pg_off; int /*<<< orphan*/  page; int /*<<< orphan*/  daddr; } ;
struct aq_ring_buff_s {int is_cleaned; unsigned int next; int is_error; scalar_t__ len; scalar_t__ is_hash_l4; int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  vlan_rx_tag; scalar_t__ is_vlan; int /*<<< orphan*/  is_cso_err; int /*<<< orphan*/  is_tcp_cso; int /*<<< orphan*/  is_udp_cso; int /*<<< orphan*/  is_ip_cso; TYPE_3__ rxdata; scalar_t__ is_eop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ AQ_CFG_RX_FRAME_MAX ; 
 scalar_t__ AQ_CFG_RX_HDR_SIZE ; 
 scalar_t__ AQ_SKB_ALIGN ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (size_t,unsigned int,size_t) ; 
 size_t FUNC7 (struct aq_ring_s*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_ring_s*,struct aq_ring_buff_s*,struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (struct napi_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

int FUNC23(struct aq_ring_s *self,
		     struct napi_struct *napi,
		     int *work_done,
		     int budget)
{
	struct net_device *ndev = FUNC5(self->aq_nic);
	bool is_rsc_completed = true;
	int err = 0;

	for (; (self->sw_head != self->hw_head) && budget;
		self->sw_head = FUNC7(self, self->sw_head),
		--budget, ++(*work_done)) {
		struct aq_ring_buff_s *buff = &self->buff_ring[self->sw_head];
		struct aq_ring_buff_s *buff_ = NULL;
		struct sk_buff *skb = NULL;
		unsigned int next_ = 0U;
		unsigned int i = 0U;
		u16 hdr_len;

		if (buff->is_cleaned)
			continue;

		if (!buff->is_eop) {
			buff_ = buff;
			do {
				next_ = buff_->next,
				buff_ = &self->buff_ring[next_];
				is_rsc_completed =
					FUNC6(self->sw_head,
							    next_,
							    self->hw_head);

				if (FUNC22(!is_rsc_completed))
					break;

				buff->is_error |= buff_->is_error;
				buff->is_cso_err |= buff_->is_cso_err;

			} while (!buff_->is_eop);

			if (!is_rsc_completed) {
				err = 0;
				goto err_exit;
			}
			if (buff->is_error || buff->is_cso_err) {
				buff_ = buff;
				do {
					next_ = buff_->next,
					buff_ = &self->buff_ring[next_];

					buff_->is_cleaned = true;
				} while (!buff_->is_eop);

				++self->stats.rx.errors;
				continue;
			}
		}

		if (buff->is_error) {
			++self->stats.rx.errors;
			continue;
		}

		FUNC10(FUNC4(self->aq_nic),
					      buff->rxdata.daddr,
					      buff->rxdata.pg_off,
					      buff->len, DMA_FROM_DEVICE);

		/* for single fragment packets use build_skb() */
		if (buff->is_eop &&
		    buff->len <= AQ_CFG_RX_FRAME_MAX - AQ_SKB_ALIGN) {
			skb = FUNC9(FUNC3(&buff->rxdata),
					AQ_CFG_RX_FRAME_MAX);
			if (FUNC22(!skb)) {
				err = -ENOMEM;
				goto err_exit;
			}
			FUNC19(skb, buff->len);
			FUNC17(buff->rxdata.page);
		} else {
			skb = FUNC15(napi, AQ_CFG_RX_HDR_SIZE);
			if (FUNC22(!skb)) {
				err = -ENOMEM;
				goto err_exit;
			}

			hdr_len = buff->len;
			if (hdr_len > AQ_CFG_RX_HDR_SIZE)
				hdr_len = FUNC11(skb->dev,
							  FUNC3(&buff->rxdata),
							  AQ_CFG_RX_HDR_SIZE);

			FUNC14(FUNC1(skb, hdr_len), FUNC3(&buff->rxdata),
			       FUNC0(hdr_len, sizeof(long)));

			if (buff->len - hdr_len > 0) {
				FUNC18(skb, 0, buff->rxdata.page,
						buff->rxdata.pg_off + hdr_len,
						buff->len - hdr_len,
						AQ_CFG_RX_FRAME_MAX);
				FUNC17(buff->rxdata.page);
			}

			if (!buff->is_eop) {
				buff_ = buff;
				i = 1U;
				do {
					next_ = buff_->next,
					buff_ = &self->buff_ring[next_];

					FUNC10(
							FUNC4(self->aq_nic),
							buff_->rxdata.daddr,
							buff_->rxdata.pg_off,
							buff_->len,
							DMA_FROM_DEVICE);
					FUNC18(skb, i++,
							buff_->rxdata.page,
							buff_->rxdata.pg_off,
							buff_->len,
							AQ_CFG_RX_FRAME_MAX);
					FUNC17(buff_->rxdata.page);
					buff_->is_cleaned = 1;

					buff->is_ip_cso &= buff_->is_ip_cso;
					buff->is_udp_cso &= buff_->is_udp_cso;
					buff->is_tcp_cso &= buff_->is_tcp_cso;
					buff->is_cso_err |= buff_->is_cso_err;

				} while (!buff_->is_eop);
			}
		}

		if (buff->is_vlan)
			FUNC2(skb, FUNC13(ETH_P_8021Q),
					       buff->vlan_rx_tag);

		skb->protocol = FUNC12(skb, ndev);

		FUNC8(self, buff, skb);

		FUNC21(skb, buff->rss_hash,
			     buff->is_hash_l4 ? PKT_HASH_TYPE_L4 :
			     PKT_HASH_TYPE_NONE);

		FUNC20(skb, self->idx);

		++self->stats.rx.packets;
		self->stats.rx.bytes += skb->len;

		FUNC16(napi, skb);
	}

err_exit:
	return err;
}