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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct i40e_pf {int /*<<< orphan*/  hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct i40e_netdev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static u64 FUNC3(struct net_device *netdev, u64 *data)
{
	struct i40e_netdev_priv *np = FUNC1(netdev);
	struct i40e_pf *pf = np->vsi->back;

	FUNC2(pf, hw, netdev, "register test\n");
	*data = FUNC0(&pf->hw);

	return *data;
}