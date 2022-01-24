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
typedef  int u64 ;
struct net_device {int dummy; } ;
struct i40e_pf {int /*<<< orphan*/  hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef  scalar_t__ i40e_status ;
struct TYPE_2__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 struct i40e_netdev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static u64 FUNC4(struct net_device *netdev, u64 *data)
{
	struct i40e_netdev_priv *np = FUNC1(netdev);
	struct i40e_pf *pf = np->vsi->back;
	i40e_status status;
	bool link_up = false;

	FUNC3(pf, hw, netdev, "link test\n");
	status = FUNC0(&pf->hw, &link_up);
	if (status) {
		FUNC2(pf, drv, netdev, "link query timed out, please retry test\n");
		*data = 1;
		return *data;
	}

	if (link_up)
		*data = 0;
	else
		*data = 1;

	return *data;
}