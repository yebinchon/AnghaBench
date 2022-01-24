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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*,int /*<<< orphan*/  const*) ; 
 struct i40e_netdev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, const u8 *addr)
{
	struct i40e_netdev_priv *np = FUNC2(netdev);
	struct i40e_vsi *vsi = np->vsi;

	/* Under some circumstances, we might receive a request to delete
	 * our own device address from our uc list. Because we store the
	 * device address in the VSI's MAC/VLAN filter list, we need to ignore
	 * such requests and not delete our device address from this list.
	 */
	if (FUNC0(addr, netdev->dev_addr))
		return 0;

	FUNC1(vsi, addr);

	return 0;
}