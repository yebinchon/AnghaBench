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
struct net_device {int flags; int /*<<< orphan*/  mc; int /*<<< orphan*/  uc; } ;
struct mvpp2_port {int /*<<< orphan*/  id; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MVPP2_PRS_L2_MULTI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_L2_UNI_CAST ; 
 scalar_t__ MVPP2_PRS_MAC_MC_FILT_MAX ; 
 scalar_t__ MVPP2_PRS_MAC_UC_FILT_MAX ; 
 scalar_t__ FUNC0 (struct mvpp2_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct mvpp2_port* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct mvpp2_port *port = FUNC5(dev);

	/* Clear the whole UC and MC list */
	FUNC1(port);

	if (dev->flags & IFF_PROMISC) {
		FUNC3(port, true);
		return;
	}

	FUNC3(port, false);

	if (FUNC6(dev) > MVPP2_PRS_MAC_UC_FILT_MAX ||
	    FUNC0(port, &dev->uc))
		FUNC2(port->priv, port->id,
					  MVPP2_PRS_L2_UNI_CAST, true);

	if (dev->flags & IFF_ALLMULTI) {
		FUNC2(port->priv, port->id,
					  MVPP2_PRS_L2_MULTI_CAST, true);
		return;
	}

	if (FUNC4(dev) > MVPP2_PRS_MAC_MC_FILT_MAX ||
	    FUNC0(port, &dev->mc))
		FUNC2(port->priv, port->id,
					  MVPP2_PRS_L2_MULTI_CAST, true);
}