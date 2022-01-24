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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct tlan_priv {size_t phy_num; int phy_online; int rx_list_dma; TYPE_2__ media_timer; scalar_t__ aui; TYPE_1__* adapter; scalar_t__ tlan_full_duplex; int /*<<< orphan*/ * phy; } ;
struct net_device {scalar_t__ base_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MII_AN_LPA ; 
 int /*<<< orphan*/  MII_GEN_ID_HI ; 
 int /*<<< orphan*/  MII_GEN_ID_LO ; 
 int /*<<< orphan*/  MII_GEN_STS ; 
 int MII_GS_LINK ; 
 int NAT_SEM_ID1 ; 
 int NAT_SEM_ID2 ; 
 int TLAN_ADAPTER_UNMANAGED_PHY ; 
 scalar_t__ TLAN_CH_PARM ; 
 int TLAN_DEBUG_PROBE ; 
 int TLAN_HC_GO ; 
 int TLAN_HC_INT_ON ; 
 int TLAN_HC_REQ_INT ; 
 int TLAN_HC_RT ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int TLAN_LED_LINK ; 
 int /*<<< orphan*/  TLAN_LED_REG ; 
 int /*<<< orphan*/  TLAN_MAX_RX ; 
 int /*<<< orphan*/  TLAN_NET_CMD ; 
 int TLAN_NET_CMD_DUPLEX ; 
 int TLAN_NET_CMD_NRESET ; 
 int TLAN_NET_CMD_NWRAP ; 
 int /*<<< orphan*/  TLAN_NET_MASK ; 
 int TLAN_NET_MASK_MASK4 ; 
 int TLAN_NET_MASK_MASK5 ; 
 int TLAN_NET_MASK_MASK7 ; 
 int /*<<< orphan*/  TLAN_NET_SIO ; 
 int TLAN_NET_SIO_MINTEN ; 
 int TLAN_PHY_AN_EN_STAT ; 
 int TLAN_PHY_DUPLEX_FULL ; 
 int TLAN_PHY_SPEED_100 ; 
 int TLAN_TC_INTEN ; 
 int /*<<< orphan*/  TLAN_TIMER_FINISH_RESET ; 
 int /*<<< orphan*/  TLAN_TLPHY_CTL ; 
 int /*<<< orphan*/  TLAN_TLPHY_PAR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int debug ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/ * media ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct tlan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct net_device *dev)
{
	struct tlan_priv	*priv = FUNC2(dev);
	u8		data;
	u32		phy;
	u8		sio;
	u16		status;
	u16		partner;
	u16		tlphy_ctl;
	u16		tlphy_par;
	u16		tlphy_id1, tlphy_id2;
	int		i;

	phy = priv->phy[priv->phy_num];

	data = TLAN_NET_CMD_NRESET | TLAN_NET_CMD_NWRAP;
	if (priv->tlan_full_duplex)
		data |= TLAN_NET_CMD_DUPLEX;
	FUNC9(dev->base_addr, TLAN_NET_CMD, data);
	data = TLAN_NET_MASK_MASK4 | TLAN_NET_MASK_MASK5;
	if (priv->phy_num == 0)
		data |= TLAN_NET_MASK_MASK7;
	FUNC9(dev->base_addr, TLAN_NET_MASK, data);
	FUNC8(dev->base_addr, TLAN_MAX_RX, ((1536)+7)&~7);
	FUNC10(dev, phy, MII_GEN_ID_HI, &tlphy_id1);
	FUNC10(dev, phy, MII_GEN_ID_LO, &tlphy_id2);

	if ((priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY) ||
	    (priv->aui)) {
		status = MII_GS_LINK;
		FUNC1(dev, "Link forced\n");
	} else {
		FUNC10(dev, phy, MII_GEN_STS, &status);
		FUNC15(1000);
		FUNC10(dev, phy, MII_GEN_STS, &status);
		if (status & MII_GS_LINK) {
			/* We only support link info on Nat.Sem. PHY's */
			if ((tlphy_id1 == NAT_SEM_ID1) &&
			    (tlphy_id2 == NAT_SEM_ID2)) {
				FUNC10(dev, phy, MII_AN_LPA,
					&partner);
				FUNC10(dev, phy, TLAN_TLPHY_PAR,
					&tlphy_par);

				FUNC1(dev,
					"Link active, %s %uMbps %s-Duplex\n",
					!(tlphy_par & TLAN_PHY_AN_EN_STAT)
					? "forced" : "Autonegotiation enabled,",
					tlphy_par & TLAN_PHY_SPEED_100
					? 100 : 10,
					tlphy_par & TLAN_PHY_DUPLEX_FULL
					? "Full" : "Half");

				if (tlphy_par & TLAN_PHY_AN_EN_STAT) {
					FUNC1(dev, "Partner capability:");
					for (i = 5; i < 10; i++)
						if (partner & (1 << i))
							FUNC6(" %s",
								media[i-5]);
					FUNC6("\n");
				}
			} else
				FUNC1(dev, "Link active\n");
			/* Enabling link beat monitoring */
			priv->media_timer.expires = jiffies + HZ;
			FUNC0(&priv->media_timer);
		}
	}

	if (priv->phy_num == 0) {
		FUNC10(dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl);
		tlphy_ctl |= TLAN_TC_INTEN;
		FUNC11(dev, phy, TLAN_TLPHY_CTL, tlphy_ctl);
		sio = FUNC7(dev->base_addr, TLAN_NET_SIO);
		sio |= TLAN_NET_SIO_MINTEN;
		FUNC9(dev->base_addr, TLAN_NET_SIO, sio);
	}

	if (status & MII_GS_LINK) {
		FUNC12(dev, 0, dev->dev_addr);
		priv->phy_online = 1;
		FUNC4((TLAN_HC_INT_ON >> 8), dev->base_addr + TLAN_HOST_CMD + 1);
		if (debug >= 1 && debug != TLAN_DEBUG_PROBE)
			FUNC4((TLAN_HC_REQ_INT >> 8),
			     dev->base_addr + TLAN_HOST_CMD + 1);
		FUNC5(priv->rx_list_dma, dev->base_addr + TLAN_CH_PARM);
		FUNC5(TLAN_HC_GO | TLAN_HC_RT, dev->base_addr + TLAN_HOST_CMD);
		FUNC9(dev->base_addr, TLAN_LED_REG, TLAN_LED_LINK);
		FUNC3(dev);
	} else {
		FUNC1(dev, "Link inactive, will retry in 10 secs...\n");
		FUNC14(dev, (10*HZ), TLAN_TIMER_FINISH_RESET);
		return;
	}
	FUNC13(dev);

}