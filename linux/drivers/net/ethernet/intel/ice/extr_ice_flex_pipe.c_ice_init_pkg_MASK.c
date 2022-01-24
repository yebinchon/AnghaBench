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
typedef  int /*<<< orphan*/  u32 ;
struct ice_seg {int dummy; } ;
struct ice_pkg_hdr {int dummy; } ;
struct ice_hw {struct ice_seg* seg; int /*<<< orphan*/  active_pkg_ver; int /*<<< orphan*/  pkg_ver; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_INIT ; 
 int ICE_ERR_AQ_NO_WORK ; 
 int ICE_ERR_CFG ; 
 int ICE_ERR_PARAM ; 
 int /*<<< orphan*/  SEGMENT_TYPE_ICE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ice_hw*,struct ice_seg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 scalar_t__ FUNC4 (struct ice_hw*,int /*<<< orphan*/ ,struct ice_pkg_hdr*) ; 
 int FUNC5 (struct ice_hw*) ; 
 int FUNC6 (struct ice_hw*,struct ice_pkg_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_hw*) ; 
 int FUNC8 (struct ice_pkg_hdr*,int /*<<< orphan*/ ) ; 

enum ice_status FUNC9(struct ice_hw *hw, u8 *buf, u32 len)
{
	struct ice_pkg_hdr *pkg;
	enum ice_status status;
	struct ice_seg *seg;

	if (!buf || !len)
		return ICE_ERR_PARAM;

	pkg = (struct ice_pkg_hdr *)buf;
	status = FUNC8(pkg, len);
	if (status) {
		FUNC1(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
			  status);
		return status;
	}

	/* initialize package info */
	status = FUNC6(hw, pkg);
	if (status)
		return status;

	/* before downloading the package, check package version for
	 * compatibility with driver
	 */
	status = FUNC0(&hw->pkg_ver);
	if (status)
		return status;

	/* find segment in given package */
	seg = (struct ice_seg *)FUNC4(hw, SEGMENT_TYPE_ICE, pkg);
	if (!seg) {
		FUNC1(hw, ICE_DBG_INIT, "no ice segment in package.\n");
		return ICE_ERR_CFG;
	}

	/* download package */
	status = FUNC2(hw, seg);
	if (status == ICE_ERR_AQ_NO_WORK) {
		FUNC1(hw, ICE_DBG_INIT,
			  "package previously loaded - no work.\n");
		status = 0;
	}

	/* Get information on the package currently loaded in HW, then make sure
	 * the driver is compatible with this version.
	 */
	if (!status) {
		status = FUNC5(hw);
		if (!status)
			status = FUNC0(&hw->active_pkg_ver);
	}

	if (!status) {
		hw->seg = seg;
		/* on successful package download update other required
		 * registers to support the package and fill HW tables
		 * with package content.
		 */
		FUNC7(hw);
		FUNC3(hw);
	} else {
		FUNC1(hw, ICE_DBG_INIT, "package load failed, %d\n",
			  status);
	}

	return status;
}