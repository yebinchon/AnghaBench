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
struct net_device {int flags; int /*<<< orphan*/  mtu; } ;
struct emac_instance {int dummy; } ;

/* Variables and functions */
 int EMAC4_RMR_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EMAC4_RMR_MJS_MASK ; 
 int /*<<< orphan*/  EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  EMAC_FTR_EMAC4 ; 
 int EMAC_RMR_BAE ; 
 int EMAC_RMR_BASE ; 
 int EMAC_RMR_IAE ; 
 int EMAC_RMR_MAE ; 
 int EMAC_RMR_PME ; 
 int EMAC_RMR_PMME ; 
 int EMAC_RMR_SFCS ; 
 int EMAC_RMR_SP ; 
 scalar_t__ FUNC1 (struct emac_instance*) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC2 (struct emac_instance*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct emac_instance* FUNC5 (struct net_device*) ; 

__attribute__((used)) static inline u32 FUNC6(struct net_device *ndev)
{
	struct emac_instance *dev = FUNC5(ndev);
	u32 r;

	r = EMAC_RMR_SP | EMAC_RMR_SFCS | EMAC_RMR_IAE | EMAC_RMR_BAE;

	if (FUNC2(dev, EMAC_FTR_EMAC4))
	    r |= EMAC4_RMR_BASE;
	else
	    r |= EMAC_RMR_BASE;

	if (ndev->flags & IFF_PROMISC)
		r |= EMAC_RMR_PME;
	else if (ndev->flags & IFF_ALLMULTI ||
			 (FUNC3(ndev) > FUNC1(dev)))
		r |= EMAC_RMR_PMME;
	else if (!FUNC4(ndev))
		r |= EMAC_RMR_MAE;

	if (FUNC2(dev, EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE)) {
		r &= ~EMAC4_RMR_MJS_MASK;
		r |= FUNC0(ndev->mtu);
	}

	return r;
}