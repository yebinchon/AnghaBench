#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct vnic_rq_buf {struct sk_buff* os_buf; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; } ;
struct vnic_rq {size_t index; int /*<<< orphan*/  vdev; } ;
struct vnic_cq {int /*<<< orphan*/  pkt_size_counter; } ;
struct sk_buff {int csum_level; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {int features; } ;
struct TYPE_4__ {scalar_t__ use_adaptive_rx_coalesce; } ;
struct TYPE_3__ {int patch_level; scalar_t__ vxlan_udp_port_number; } ;
struct enic {int /*<<< orphan*/  pdev; TYPE_2__ rx_coalesce_setting; int /*<<< orphan*/ * napi; TYPE_1__ vxlan; int /*<<< orphan*/  rq_truncated_pkts; int /*<<< orphan*/  rq_bad_fcs; struct vnic_cq* cq; struct net_device* netdev; } ;
struct cq_enet_rq_desc {int dummy; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_IPv4 133 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_IPv6 132 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_IPv6_EX 131 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv4 130 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv6 129 
#define  CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv6_EX 128 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_GRO ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cq_enet_rq_desc*,int*,int*,scalar_t__*,scalar_t__*,int*,int*,int*,int*,int*,int*,int*,scalar_t__*,int*,int*,scalar_t__*,scalar_t__*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 size_t FUNC4 (struct enic*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct sk_buff**,struct vnic_rq_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct enic* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct vnic_rq *rq,
	struct cq_desc *cq_desc, struct vnic_rq_buf *buf,
	int skipped, void *opaque)
{
	struct enic *enic = FUNC17(rq->vdev);
	struct net_device *netdev = enic->netdev;
	struct sk_buff *skb;
	struct vnic_cq *cq = &enic->cq[FUNC4(enic, rq->index)];

	u8 type, color, eop, sop, ingress_port, vlan_stripped;
	u8 fcoe, fcoe_sof, fcoe_fc_crc_ok, fcoe_enc_error, fcoe_eof;
	u8 tcp_udp_csum_ok, udp, tcp, ipv4_csum_ok;
	u8 ipv6, ipv4, ipv4_fragment, fcs_ok, rss_type, csum_not_calc;
	u8 packet_error;
	u16 q_number, completed_index, bytes_written, vlan_tci, checksum;
	u32 rss_hash;
	bool outer_csum_ok = true, encap = false;

	if (skipped)
		return;

	skb = buf->os_buf;

	FUNC2((struct cq_enet_rq_desc *)cq_desc,
		&type, &color, &q_number, &completed_index,
		&ingress_port, &fcoe, &eop, &sop, &rss_type,
		&csum_not_calc, &rss_hash, &bytes_written,
		&packet_error, &vlan_stripped, &vlan_tci, &checksum,
		&fcoe_sof, &fcoe_fc_crc_ok, &fcoe_enc_error,
		&fcoe_eof, &tcp_udp_csum_ok, &udp, &tcp,
		&ipv4_csum_ok, &ipv6, &ipv4, &ipv4_fragment,
		&fcs_ok);

	if (packet_error) {

		if (!fcs_ok) {
			if (bytes_written > 0)
				enic->rq_bad_fcs++;
			else if (bytes_written == 0)
				enic->rq_truncated_pkts++;
		}

		FUNC11(enic->pdev, buf->dma_addr, buf->len,
				 PCI_DMA_FROMDEVICE);
		FUNC3(skb);
		buf->os_buf = NULL;

		return;
	}

	if (eop && bytes_written > 0) {

		/* Good receive
		 */

		if (!FUNC6(netdev, &skb, buf, bytes_written)) {
			buf->os_buf = NULL;
			FUNC11(enic->pdev, buf->dma_addr, buf->len,
					 PCI_DMA_FROMDEVICE);
		}
		FUNC12(skb->data - NET_IP_ALIGN);

		FUNC14(skb, bytes_written);
		skb->protocol = FUNC7(skb, netdev);
		FUNC15(skb, q_number);
		if ((netdev->features & NETIF_F_RXHASH) && rss_hash &&
		    (type == 3)) {
			switch (rss_type) {
			case CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv4:
			case CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv6:
			case CQ_ENET_RQ_DESC_RSS_TYPE_TCP_IPv6_EX:
				FUNC16(skb, rss_hash, PKT_HASH_TYPE_L4);
				break;
			case CQ_ENET_RQ_DESC_RSS_TYPE_IPv4:
			case CQ_ENET_RQ_DESC_RSS_TYPE_IPv6:
			case CQ_ENET_RQ_DESC_RSS_TYPE_IPv6_EX:
				FUNC16(skb, rss_hash, PKT_HASH_TYPE_L3);
				break;
			}
		}
		if (enic->vxlan.vxlan_udp_port_number) {
			switch (enic->vxlan.patch_level) {
			case 0:
				if (fcoe) {
					encap = true;
					outer_csum_ok = fcoe_fc_crc_ok;
				}
				break;
			case 2:
				if ((type == 7) &&
				    (rss_hash & FUNC0(0))) {
					encap = true;
					outer_csum_ok = (rss_hash & FUNC0(1)) &&
							(rss_hash & FUNC0(2));
				}
				break;
			}
		}

		/* Hardware does not provide whole packet checksum. It only
		 * provides pseudo checksum. Since hw validates the packet
		 * checksum but not provide us the checksum value. use
		 * CHECSUM_UNNECESSARY.
		 *
		 * In case of encap pkt tcp_udp_csum_ok/tcp_udp_csum_ok is
		 * inner csum_ok. outer_csum_ok is set by hw when outer udp
		 * csum is correct or is zero.
		 */
		if ((netdev->features & NETIF_F_RXCSUM) && !csum_not_calc &&
		    tcp_udp_csum_ok && outer_csum_ok &&
		    (ipv4_csum_ok || ipv6)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			skb->csum_level = encap;
		}

		if (vlan_stripped)
			FUNC1(skb, FUNC8(ETH_P_8021Q), vlan_tci);

		FUNC13(skb, &enic->napi[rq->index]);
		if (!(netdev->features & NETIF_F_GRO))
			FUNC10(skb);
		else
			FUNC9(&enic->napi[q_number], skb);
		if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
			FUNC5(&cq->pkt_size_counter,
						  bytes_written);
	} else {

		/* Buffer overflow
		 */

		FUNC11(enic->pdev, buf->dma_addr, buf->len,
				 PCI_DMA_FROMDEVICE);
		FUNC3(skb);
		buf->os_buf = NULL;
	}
}