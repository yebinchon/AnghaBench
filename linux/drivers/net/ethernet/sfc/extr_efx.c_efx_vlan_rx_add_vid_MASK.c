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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int (* vlan_rx_add_vid ) (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct efx_nic* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev, __be16 proto, u16 vid)
{
	struct efx_nic *efx = FUNC0(net_dev);

	if (efx->type->vlan_rx_add_vid)
		return efx->type->vlan_rx_add_vid(efx, proto, vid);
	else
		return -EOPNOTSUPP;
}