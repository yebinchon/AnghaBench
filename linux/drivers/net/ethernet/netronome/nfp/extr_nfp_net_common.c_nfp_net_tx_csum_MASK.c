#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct nfp_net_tx_desc {int /*<<< orphan*/  flags; } ;
struct nfp_net_tx_buf {scalar_t__ pkt_cnt; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  tx_sync; int /*<<< orphan*/  hw_csum_tx; int /*<<< orphan*/  hw_csum_tx_inner; } ;
struct nfp_net_dp {int ctrl; } ;
struct ipv6hdr {int version; int nexthdr; } ;
struct iphdr {int version; int protocol; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int NFP_NET_CFG_CTRL_TXCSUM ; 
 int /*<<< orphan*/  PCIE_DESC_TX_CSUM ; 
 int /*<<< orphan*/  PCIE_DESC_TX_ENCAP ; 
 int /*<<< orphan*/  PCIE_DESC_TX_IP4_CSUM ; 
 int /*<<< orphan*/  PCIE_DESC_TX_TCP_CSUM ; 
 int /*<<< orphan*/  PCIE_DESC_TX_UDP_CSUM ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net_dp*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfp_net_dp *dp,
			    struct nfp_net_r_vector *r_vec,
			    struct nfp_net_tx_buf *txbuf,
			    struct nfp_net_tx_desc *txd, struct sk_buff *skb)
{
	struct ipv6hdr *ipv6h;
	struct iphdr *iph;
	u8 l4_hdr;

	if (!(dp->ctrl & NFP_NET_CFG_CTRL_TXCSUM))
		return;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return;

	txd->flags |= PCIE_DESC_TX_CSUM;
	if (skb->encapsulation)
		txd->flags |= PCIE_DESC_TX_ENCAP;

	iph = skb->encapsulation ? FUNC0(skb) : FUNC2(skb);
	ipv6h = skb->encapsulation ? FUNC1(skb) : FUNC3(skb);

	if (iph->version == 4) {
		txd->flags |= PCIE_DESC_TX_IP4_CSUM;
		l4_hdr = iph->protocol;
	} else if (ipv6h->version == 6) {
		l4_hdr = ipv6h->nexthdr;
	} else {
		FUNC4(dp, "partial checksum but ipv=%x!\n", iph->version);
		return;
	}

	switch (l4_hdr) {
	case IPPROTO_TCP:
		txd->flags |= PCIE_DESC_TX_TCP_CSUM;
		break;
	case IPPROTO_UDP:
		txd->flags |= PCIE_DESC_TX_UDP_CSUM;
		break;
	default:
		FUNC4(dp, "partial checksum but l4 proto=%x!\n", l4_hdr);
		return;
	}

	FUNC5(&r_vec->tx_sync);
	if (skb->encapsulation)
		r_vec->hw_csum_tx_inner += txbuf->pkt_cnt;
	else
		r_vec->hw_csum_tx += txbuf->pkt_cnt;
	FUNC6(&r_vec->tx_sync);
}