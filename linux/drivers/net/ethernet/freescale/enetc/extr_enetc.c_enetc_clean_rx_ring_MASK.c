#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf_len; int /*<<< orphan*/  lstatus; } ;
union enetc_rx_bd {TYPE_3__ r; } ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; } ;
struct napi_struct {int dummy; } ;
struct TYPE_8__ {int packets; int bytes; } ;
struct enetc_bdr {int next_to_clean; int bd_count; TYPE_4__ stats; TYPE_2__* ndev; int /*<<< orphan*/  index; int /*<<< orphan*/  idr; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 union enetc_rx_bd* FUNC1 (struct enetc_bdr,int) ; 
 int ENETC_RXBD_BUNDLE ; 
 int /*<<< orphan*/  ENETC_RXBD_ERR_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ENETC_RXBD_LSTATUS_F ; 
 int /*<<< orphan*/  ENETC_RXB_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_bdr*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC6 (struct enetc_bdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_bdr*,union enetc_rx_bd*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct enetc_bdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct enetc_bdr*,struct sk_buff*) ; 
 int FUNC10 (struct enetc_bdr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct napi_struct*,struct sk_buff*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct enetc_bdr *rx_ring,
			       struct napi_struct *napi, int work_limit)
{
	int rx_frm_cnt = 0, rx_byte_cnt = 0;
	int cleaned_cnt, i;

	cleaned_cnt = FUNC6(rx_ring);
	/* next descriptor to process */
	i = rx_ring->next_to_clean;

	while (FUNC14(rx_frm_cnt < work_limit)) {
		union enetc_rx_bd *rxbd;
		struct sk_buff *skb;
		u32 bd_status;
		u16 size;

		if (cleaned_cnt >= ENETC_RXBD_BUNDLE) {
			int count = FUNC10(rx_ring, cleaned_cnt);

			cleaned_cnt -= count;
		}

		rxbd = FUNC1(*rx_ring, i);
		bd_status = FUNC13(rxbd->r.lstatus);
		if (!bd_status)
			break;

		FUNC11(rx_ring->idr, FUNC0(rx_ring->index));
		FUNC4(); /* for reading other rxbd fields */
		size = FUNC12(rxbd->r.buf_len);
		skb = FUNC8(rx_ring, i, size);
		if (!skb)
			break;

		FUNC7(rx_ring, rxbd, skb);

		cleaned_cnt++;
		rxbd++;
		i++;
		if (FUNC16(i == rx_ring->bd_count)) {
			i = 0;
			rxbd = FUNC1(*rx_ring, 0);
		}

		if (FUNC16(bd_status &
			     FUNC2(ENETC_RXBD_ERR_MASK))) {
			FUNC3(skb);
			while (!(bd_status & ENETC_RXBD_LSTATUS_F)) {
				FUNC4();
				bd_status = FUNC13(rxbd->r.lstatus);
				rxbd++;
				i++;
				if (FUNC16(i == rx_ring->bd_count)) {
					i = 0;
					rxbd = FUNC1(*rx_ring, 0);
				}
			}

			rx_ring->ndev->stats.rx_dropped++;
			rx_ring->ndev->stats.rx_errors++;

			break;
		}

		/* not last BD in frame? */
		while (!(bd_status & ENETC_RXBD_LSTATUS_F)) {
			bd_status = FUNC13(rxbd->r.lstatus);
			size = ENETC_RXB_DMA_SIZE;

			if (bd_status & ENETC_RXBD_LSTATUS_F) {
				FUNC4();
				size = FUNC12(rxbd->r.buf_len);
			}

			FUNC5(rx_ring, i, size, skb);

			cleaned_cnt++;
			rxbd++;
			i++;
			if (FUNC16(i == rx_ring->bd_count)) {
				i = 0;
				rxbd = FUNC1(*rx_ring, 0);
			}
		}

		rx_byte_cnt += skb->len;

		FUNC9(rx_ring, skb);

		FUNC15(napi, skb);

		rx_frm_cnt++;
	}

	rx_ring->next_to_clean = i;

	rx_ring->stats.packets += rx_frm_cnt;
	rx_ring->stats.bytes += rx_byte_cnt;

	return rx_frm_cnt;
}