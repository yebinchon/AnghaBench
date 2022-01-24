#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ice_vsi {TYPE_2__* back; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ice_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_add_list ; 

enum ice_status
FUNC5(struct ice_vsi *vsi, const u8 *macaddr, bool set)
{
	FUNC0(tmp_add_list);
	enum ice_status status;

	 /* Update MAC filter list to be added or removed for a VSI */
	if (FUNC2(vsi, &tmp_add_list, macaddr)) {
		status = ICE_ERR_NO_MEMORY;
		goto cfg_mac_fltr_exit;
	}

	if (set)
		status = FUNC1(&vsi->back->hw, &tmp_add_list);
	else
		status = FUNC4(&vsi->back->hw, &tmp_add_list);

cfg_mac_fltr_exit:
	FUNC3(&vsi->back->pdev->dev, &tmp_add_list);
	return status;
}