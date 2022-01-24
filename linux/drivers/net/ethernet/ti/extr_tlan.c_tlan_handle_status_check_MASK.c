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
typedef  int u32 ;
typedef  int u16 ;
struct tlan_priv {int* phy; size_t phy_num; int /*<<< orphan*/  tlan_tqueue; } ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ TLAN_CH_PARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_HC_AD_RST ; 
 int TLAN_HI_IV_MASK ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int /*<<< orphan*/  TLAN_NET_STS ; 
 int TLAN_NET_STS_MIRQ ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int TLAN_TC_SWAPOL ; 
 int /*<<< orphan*/  TLAN_TLPHY_CTL ; 
 int /*<<< orphan*/  TLAN_TLPHY_STS ; 
 int TLAN_TS_POLOK ; 
 scalar_t__ debug ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct tlan_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC14(struct net_device *dev, u16 host_int)
{
	struct tlan_priv	*priv = FUNC3(dev);
	u32		ack;
	u32		error;
	u8		net_sts;
	u32		phy;
	u16		tlphy_ctl;
	u16		tlphy_sts;

	ack = 1;
	if (host_int & TLAN_HI_IV_MASK) {
		FUNC4(dev);
		error = FUNC1(dev->base_addr + TLAN_CH_PARM);
		FUNC2(dev, "Adaptor Error = 0x%x\n", error);
		FUNC13(dev, TLAN_RECORD);
		FUNC6(TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD);

		FUNC7(&priv->tlan_tqueue);

		FUNC5(dev);
		ack = 0;
	} else {
		FUNC0(TLAN_DEBUG_GNRL, "%s: Status Check\n", dev->name);
		phy = priv->phy[priv->phy_num];

		net_sts = FUNC8(dev->base_addr, TLAN_NET_STS);
		if (net_sts) {
			FUNC9(dev->base_addr, TLAN_NET_STS, net_sts);
			FUNC0(TLAN_DEBUG_GNRL, "%s:    Net_Sts = %x\n",
				 dev->name, (unsigned) net_sts);
		}
		if ((net_sts & TLAN_NET_STS_MIRQ) &&  (priv->phy_num == 0)) {
			FUNC10(dev, phy, TLAN_TLPHY_STS, &tlphy_sts);
			FUNC10(dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl);
			if (!(tlphy_sts & TLAN_TS_POLOK) &&
			    !(tlphy_ctl & TLAN_TC_SWAPOL)) {
				tlphy_ctl |= TLAN_TC_SWAPOL;
				FUNC11(dev, phy, TLAN_TLPHY_CTL,
						   tlphy_ctl);
			} else if ((tlphy_sts & TLAN_TS_POLOK) &&
				   (tlphy_ctl & TLAN_TC_SWAPOL)) {
				tlphy_ctl &= ~TLAN_TC_SWAPOL;
				FUNC11(dev, phy, TLAN_TLPHY_CTL,
						   tlphy_ctl);
			}

			if (debug)
				FUNC12(dev);
		}
	}

	return ack;

}