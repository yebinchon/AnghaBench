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
struct ethtool_wolinfo {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {void (* get_wol ) (struct efx_nic*,struct ethtool_wolinfo*) ;} ;

/* Variables and functions */
 struct efx_nic* FUNC0 (struct net_device*) ; 
 void FUNC1 (struct efx_nic*,struct ethtool_wolinfo*) ; 

__attribute__((used)) static void FUNC2(struct net_device *net_dev,
				struct ethtool_wolinfo *wol)
{
	struct efx_nic *efx = FUNC0(net_dev);
	return efx->type->get_wol(efx, wol);
}