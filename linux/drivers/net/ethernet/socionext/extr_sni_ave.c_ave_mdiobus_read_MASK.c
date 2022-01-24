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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AVE_MDIOAR ; 
 scalar_t__ AVE_MDIOCTR ; 
 int AVE_MDIOCTR_RREQ ; 
 int AVE_MDIOCTR_WREQ ; 
 scalar_t__ AVE_MDIORDR ; 
 scalar_t__ AVE_MDIOSR ; 
 int AVE_MDIOSR_STS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int) ; 
 struct ave_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phyid, int regnum)
{
	struct net_device *ndev = bus->priv;
	struct ave_private *priv;
	u32 mdioctl, mdiosr;
	int ret;

	priv = FUNC2(ndev);

	/* write address */
	FUNC5((phyid << 8) | regnum, priv->base + AVE_MDIOAR);

	/* read request */
	mdioctl = FUNC3(priv->base + AVE_MDIOCTR);
	FUNC5((mdioctl | AVE_MDIOCTR_RREQ) & ~AVE_MDIOCTR_WREQ,
	       priv->base + AVE_MDIOCTR);

	ret = FUNC4(priv->base + AVE_MDIOSR, mdiosr,
				 !(mdiosr & AVE_MDIOSR_STS), 20, 2000);
	if (ret) {
		FUNC1(ndev, "failed to read (phy:%d reg:%x)\n",
			   phyid, regnum);
		return ret;
	}

	return FUNC3(priv->base + AVE_MDIORDR) & FUNC0(15, 0);
}