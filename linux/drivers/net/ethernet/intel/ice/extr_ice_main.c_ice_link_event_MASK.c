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
typedef  scalar_t__ u16 ;
struct ice_vsi {int /*<<< orphan*/  vsi_num; int /*<<< orphan*/  port_info; } ;
struct TYPE_3__ {int link_info; scalar_t__ link_speed; } ;
struct ice_phy_info {TYPE_1__ link_info; TYPE_1__ link_info_old; } ;
struct ice_port_info {struct ice_phy_info phy; int /*<<< orphan*/  lport; } ;
struct ice_pf {scalar_t__ num_alloc_vfs; TYPE_2__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ICE_AQ_LINK_UP ; 
 int ICE_AQ_MEDIA_AVAILABLE ; 
 int /*<<< orphan*/  ICE_FLAG_NO_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct ice_port_info*,int,int /*<<< orphan*/ *) ; 
 struct ice_vsi* FUNC2 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_vsi*,int) ; 
 int FUNC4 (struct ice_port_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_vsi*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
	       u16 link_speed)
{
	struct ice_phy_info *phy_info;
	struct ice_vsi *vsi;
	u16 old_link_speed;
	bool old_link;
	int result;

	phy_info = &pi->phy;
	phy_info->link_info_old = phy_info->link_info;

	old_link = !!(phy_info->link_info_old.link_info & ICE_AQ_LINK_UP);
	old_link_speed = phy_info->link_info_old.link_speed;

	/* update the link info structures and re-enable link events,
	 * don't bail on failure due to other book keeping needed
	 */
	result = FUNC4(pi);
	if (result)
		FUNC0(&pf->pdev->dev,
			"Failed to update link status and re-enable link events for port %d\n",
			pi->lport);

	/* if the old link up/down and speed is the same as the new */
	if (link_up == old_link && link_speed == old_link_speed)
		return result;

	vsi = FUNC2(pf);
	if (!vsi || !vsi->port_info)
		return -EINVAL;

	/* turn off PHY if media was removed */
	if (!FUNC8(ICE_FLAG_NO_MEDIA, pf->flags) &&
	    !(pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE)) {
		FUNC7(ICE_FLAG_NO_MEDIA, pf->flags);

		result = FUNC1(pi, false, NULL);
		if (result) {
			FUNC0(&pf->pdev->dev,
				"Failed to set link down, VSI %d error %d\n",
				vsi->vsi_num, result);
			return result;
		}
	}

	FUNC6(vsi, link_up);
	FUNC3(vsi, link_up);

	if (pf->num_alloc_vfs)
		FUNC5(pf);

	return result;
}