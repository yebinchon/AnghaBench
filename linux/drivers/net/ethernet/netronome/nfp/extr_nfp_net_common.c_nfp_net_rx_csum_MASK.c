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
struct sk_buff {int /*<<< orphan*/  csum; scalar_t__ ip_summed; } ;
struct TYPE_4__ {int flags; } ;
struct nfp_net_rx_desc {TYPE_2__ rxd; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  rx_sync; int /*<<< orphan*/  hw_csum_rx_inner_ok; int /*<<< orphan*/  hw_csum_rx_ok; int /*<<< orphan*/  hw_csum_rx_error; int /*<<< orphan*/  hw_csum_rx_complete; } ;
struct nfp_net_dp {TYPE_1__* netdev; } ;
struct nfp_meta_parsed {int /*<<< orphan*/  csum; scalar_t__ csum_type; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 int PCIE_DESC_RX_I_TCP_CSUM_OK ; 
 int PCIE_DESC_RX_I_UDP_CSUM_OK ; 
 int PCIE_DESC_RX_TCP_CSUM_OK ; 
 int PCIE_DESC_RX_UDP_CSUM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfp_net_dp *dp,
			    struct nfp_net_r_vector *r_vec,
			    struct nfp_net_rx_desc *rxd,
			    struct nfp_meta_parsed *meta, struct sk_buff *skb)
{
	FUNC3(skb);

	if (!(dp->netdev->features & NETIF_F_RXCSUM))
		return;

	if (meta->csum_type) {
		skb->ip_summed = meta->csum_type;
		skb->csum = meta->csum;
		FUNC4(&r_vec->rx_sync);
		r_vec->hw_csum_rx_complete++;
		FUNC5(&r_vec->rx_sync);
		return;
	}

	if (FUNC2(FUNC1(rxd->rxd.flags))) {
		FUNC4(&r_vec->rx_sync);
		r_vec->hw_csum_rx_error++;
		FUNC5(&r_vec->rx_sync);
		return;
	}

	/* Assume that the firmware will never report inner CSUM_OK unless outer
	 * L4 headers were successfully parsed. FW will always report zero UDP
	 * checksum as CSUM_OK.
	 */
	if (rxd->rxd.flags & PCIE_DESC_RX_TCP_CSUM_OK ||
	    rxd->rxd.flags & PCIE_DESC_RX_UDP_CSUM_OK) {
		FUNC0(skb);
		FUNC4(&r_vec->rx_sync);
		r_vec->hw_csum_rx_ok++;
		FUNC5(&r_vec->rx_sync);
	}

	if (rxd->rxd.flags & PCIE_DESC_RX_I_TCP_CSUM_OK ||
	    rxd->rxd.flags & PCIE_DESC_RX_I_UDP_CSUM_OK) {
		FUNC0(skb);
		FUNC4(&r_vec->rx_sync);
		r_vec->hw_csum_rx_inner_ok++;
		FUNC5(&r_vec->rx_sync);
	}
}