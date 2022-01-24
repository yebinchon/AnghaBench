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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* sriov_set_vf_mac ) (struct efx_nic*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct efx_nic* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct efx_nic*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct net_device *net_dev, int vf_i, u8 *mac)
{
	struct efx_nic *efx = FUNC0(net_dev);

	if (efx->type->sriov_set_vf_mac)
		return efx->type->sriov_set_vf_mac(efx, vf_i, mac);
	else
		return -EOPNOTSUPP;
}