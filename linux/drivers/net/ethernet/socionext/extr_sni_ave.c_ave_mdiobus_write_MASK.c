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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AVE_MDIOAR ; 
 scalar_t__ AVE_MDIOCTR ; 
 int AVE_MDIOCTR_RREQ ; 
 int AVE_MDIOCTR_WREQ ; 
 scalar_t__ AVE_MDIOSR ; 
 int AVE_MDIOSR_STS ; 
 scalar_t__ AVE_MDIOWDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int,int) ; 
 struct ave_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phyid, int regnum,
			     u16 val)
{
	struct net_device *ndev = bus->priv;
	struct ave_private *priv;
	u32 mdioctl, mdiosr;
	int ret;

	priv = FUNC1(ndev);

	/* write address */
	FUNC4((phyid << 8) | regnum, priv->base + AVE_MDIOAR);

	/* write data */
	FUNC4(val, priv->base + AVE_MDIOWDR);

	/* write request */
	mdioctl = FUNC2(priv->base + AVE_MDIOCTR);
	FUNC4((mdioctl | AVE_MDIOCTR_WREQ) & ~AVE_MDIOCTR_RREQ,
	       priv->base + AVE_MDIOCTR);

	ret = FUNC3(priv->base + AVE_MDIOSR, mdiosr,
				 !(mdiosr & AVE_MDIOSR_STS), 20, 2000);
	if (ret)
		FUNC0(ndev, "failed to write (phy:%d reg:%x)\n",
			   phyid, regnum);

	return ret;
}