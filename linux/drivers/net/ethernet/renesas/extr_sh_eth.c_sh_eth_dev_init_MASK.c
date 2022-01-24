#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sh_eth_private {int irq_enabled; TYPE_1__* cd; scalar_t__ duplex; } ;
struct net_device {int mtu; int features; } ;
struct TYPE_2__ {int (* soft_reset ) (struct net_device*) ;int fdr_value; int trscer_err_mask; int fcftr_value; int eesipr_value; int ecsr_value; int ecsipr_value; scalar_t__ tpauser; scalar_t__ mpr; scalar_t__ apr; int /*<<< orphan*/  (* set_rate ) (struct net_device*) ;int /*<<< orphan*/  no_trimd; scalar_t__ bculr; scalar_t__ nbst; scalar_t__ hw_swap; scalar_t__ rpadir; scalar_t__ rmiimode; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR ; 
 int /*<<< orphan*/  BCULR ; 
 int /*<<< orphan*/  ECMR ; 
 int ECMR_DM ; 
 int ECMR_RCSC ; 
 int ECMR_RE ; 
 int ECMR_TE ; 
 int ECMR_ZPF ; 
 int /*<<< orphan*/  ECSIPR ; 
 int /*<<< orphan*/  ECSR ; 
 int /*<<< orphan*/  EDMR ; 
 int EDMR_EL ; 
 int /*<<< orphan*/  EDMR_NBST ; 
 int /*<<< orphan*/  EDRRR ; 
 int EDRRR_R ; 
 int /*<<< orphan*/  EESIPR ; 
 int /*<<< orphan*/  EESR ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  FCFTR ; 
 int /*<<< orphan*/  FDR ; 
 int /*<<< orphan*/  MPR ; 
 int NETIF_F_RXCSUM ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  RFLR ; 
 int /*<<< orphan*/  RMCR ; 
 int RMCR_RNC ; 
 int /*<<< orphan*/  RMIIMODE ; 
 int /*<<< orphan*/  RPADIR ; 
 int /*<<< orphan*/  TFTR ; 
 int /*<<< orphan*/  TPAUSER ; 
 int TPAUSER_UNLIMITED ; 
 int /*<<< orphan*/  TRIMD ; 
 int /*<<< orphan*/  TRSCER ; 
 int VLAN_HLEN ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	int ret;

	/* Soft Reset */
	ret = mdp->cd->soft_reset(ndev);
	if (ret)
		return ret;

	if (mdp->cd->rmiimode)
		FUNC3(ndev, 0x1, RMIIMODE);

	/* Descriptor format */
	FUNC2(ndev);
	if (mdp->cd->rpadir)
		FUNC3(ndev, NET_IP_ALIGN << 16, RPADIR);

	/* all sh_eth int mask */
	FUNC3(ndev, 0, EESIPR);

#if defined(__LITTLE_ENDIAN)
	if (mdp->cd->hw_swap)
		sh_eth_write(ndev, EDMR_EL, EDMR);
	else
#endif
		FUNC3(ndev, 0, EDMR);

	/* FIFO size set */
	FUNC3(ndev, mdp->cd->fdr_value, FDR);
	FUNC3(ndev, 0, TFTR);

	/* Frame recv control (enable multiple-packets per rx irq) */
	FUNC3(ndev, RMCR_RNC, RMCR);

	FUNC3(ndev, mdp->cd->trscer_err_mask, TRSCER);

	/* DMA transfer burst mode */
	if (mdp->cd->nbst)
		FUNC1(ndev, EDMR, EDMR_NBST, EDMR_NBST);

	/* Burst cycle count upper-limit */
	if (mdp->cd->bculr)
		FUNC3(ndev, 0x800, BCULR);

	FUNC3(ndev, mdp->cd->fcftr_value, FCFTR);

	if (!mdp->cd->no_trimd)
		FUNC3(ndev, 0, TRIMD);

	/* Recv frame limit set register */
	FUNC3(ndev, ndev->mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN,
		     RFLR);

	FUNC1(ndev, EESR, 0, 0);
	mdp->irq_enabled = true;
	FUNC3(ndev, mdp->cd->eesipr_value, EESIPR);

	/* EMAC Mode: PAUSE prohibition; Duplex; RX Checksum; TX; RX */
	FUNC3(ndev, ECMR_ZPF | (mdp->duplex ? ECMR_DM : 0) |
		     (ndev->features & NETIF_F_RXCSUM ? ECMR_RCSC : 0) |
		     ECMR_TE | ECMR_RE, ECMR);

	if (mdp->cd->set_rate)
		mdp->cd->set_rate(ndev);

	/* E-MAC Status Register clear */
	FUNC3(ndev, mdp->cd->ecsr_value, ECSR);

	/* E-MAC Interrupt Enable register */
	FUNC3(ndev, mdp->cd->ecsipr_value, ECSIPR);

	/* Set MAC address */
	FUNC6(ndev);

	/* mask reset */
	if (mdp->cd->apr)
		FUNC3(ndev, 1, APR);
	if (mdp->cd->mpr)
		FUNC3(ndev, 1, MPR);
	if (mdp->cd->tpauser)
		FUNC3(ndev, TPAUSER_UNLIMITED, TPAUSER);

	/* Setting the Rx mode will start the Rx process. */
	FUNC3(ndev, EDRRR_R, EDRRR);

	return ret;
}