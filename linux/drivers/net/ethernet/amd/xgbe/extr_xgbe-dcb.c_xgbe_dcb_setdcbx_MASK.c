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
struct xgbe_prv_data {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 struct xgbe_prv_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int FUNC2 (struct net_device*) ; 

__attribute__((used)) static u8 FUNC3(struct net_device *netdev, u8 dcbx)
{
	struct xgbe_prv_data *pdata = FUNC0(netdev);
	u8 support = FUNC2(netdev);

	FUNC1(pdata, drv, netdev, "DCBX=%#hhx\n", dcbx);

	if (dcbx & ~support)
		return 1;

	if ((dcbx & support) != support)
		return 1;

	return 0;
}