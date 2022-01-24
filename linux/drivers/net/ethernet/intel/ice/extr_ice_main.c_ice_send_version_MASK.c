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
struct ice_pf {int /*<<< orphan*/  hw; } ;
struct ice_driver_ver {scalar_t__ driver_string; scalar_t__ subbuild_ver; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  minor_ver; int /*<<< orphan*/  major_ver; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  DRV_VERSION_BUILD ; 
 int /*<<< orphan*/  DRV_VERSION_MAJOR ; 
 int /*<<< orphan*/  DRV_VERSION_MINOR ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ice_driver_ver*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum ice_status FUNC2(struct ice_pf *pf)
{
	struct ice_driver_ver dv;

	dv.major_ver = DRV_VERSION_MAJOR;
	dv.minor_ver = DRV_VERSION_MINOR;
	dv.build_ver = DRV_VERSION_BUILD;
	dv.subbuild_ver = 0;
	FUNC1((char *)dv.driver_string, DRV_VERSION,
		sizeof(dv.driver_string));
	return FUNC0(&pf->hw, &dv, NULL);
}