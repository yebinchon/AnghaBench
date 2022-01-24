#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ice_vsi {TYPE_4__* netdev; TYPE_3__* port_info; } ;
struct ice_pf {TYPE_1__* pdev; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_9__ {scalar_t__ reg_state; } ;
struct TYPE_7__ {int /*<<< orphan*/ * perm_addr; } ;
struct TYPE_8__ {TYPE_2__ mac; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETH_ALEN ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 struct ice_vsi* FUNC3 (struct ice_pf*) ; 
 int FUNC4 (struct ice_vsi*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(struct ice_pf *pf)
{
	enum ice_status status;
	u8 broadcast[ETH_ALEN];
	struct ice_vsi *vsi;

	vsi = FUNC3(pf);
	if (!vsi)
		return -EINVAL;

	/* To add a MAC filter, first add the MAC to a list and then
	 * pass the list to ice_add_mac.
	 */

	 /* Add a unicast MAC filter so the VSI can get its packets */
	status = FUNC4(vsi, vsi->port_info->mac.perm_addr, true);
	if (status)
		goto unregister;

	/* VSI needs to receive broadcast traffic, so add the broadcast
	 * MAC address to the list as well.
	 */
	FUNC1(broadcast);
	status = FUNC4(vsi, broadcast, true);
	if (status)
		goto unregister;

	return 0;
unregister:
	/* We aren't useful with no MAC filters, so unregister if we
	 * had an error
	 */
	if (status && vsi->netdev->reg_state == NETREG_REGISTERED) {
		FUNC0(&pf->pdev->dev,
			"Could not add MAC filters error %d. Unregistering device\n",
			status);
		FUNC5(vsi->netdev);
		FUNC2(vsi->netdev);
		vsi->netdev = NULL;
	}

	return -EIO;
}