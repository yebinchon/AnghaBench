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
struct ice_link_status {int link_info; int /*<<< orphan*/  module_type; } ;
struct TYPE_2__ {struct ice_link_status link_info; } ;
struct ice_port_info {struct ice_hw* hw; TYPE_1__ phy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_phy_caps_data {int /*<<< orphan*/  module_type; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_AQC_REPORT_TOPO_CAP ; 
 int ICE_AQ_MEDIA_AVAILABLE ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ice_aqc_get_phy_caps_data*) ; 
 struct ice_aqc_get_phy_caps_data* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ice_port_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ice_port_info*,int,int /*<<< orphan*/ ,struct ice_aqc_get_phy_caps_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

enum ice_status FUNC6(struct ice_port_info *pi)
{
	struct ice_link_status *li;
	enum ice_status status;

	if (!pi)
		return ICE_ERR_PARAM;

	li = &pi->phy.link_info;

	status = FUNC2(pi, true, NULL, NULL);
	if (status)
		return status;

	if (li->link_info & ICE_AQ_MEDIA_AVAILABLE) {
		struct ice_aqc_get_phy_caps_data *pcaps;
		struct ice_hw *hw;

		hw = pi->hw;
		pcaps = FUNC1(FUNC4(hw), sizeof(*pcaps),
				     GFP_KERNEL);
		if (!pcaps)
			return ICE_ERR_NO_MEMORY;

		status = FUNC3(pi, false, ICE_AQC_REPORT_TOPO_CAP,
					     pcaps, NULL);
		if (!status)
			FUNC5(li->module_type, &pcaps->module_type,
			       sizeof(li->module_type));

		FUNC0(FUNC4(hw), pcaps);
	}

	return status;
}