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
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* set_wol ) (struct ef4_nic*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ef4_nic* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev,
			       struct ethtool_wolinfo *wol)
{
	struct ef4_nic *efx = FUNC0(net_dev);
	return efx->type->set_wol(efx, wol->wolopts);
}