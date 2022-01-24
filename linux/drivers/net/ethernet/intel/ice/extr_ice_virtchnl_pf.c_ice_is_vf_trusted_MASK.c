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
struct ice_vf {int /*<<< orphan*/  vf_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_VIRTCHNL_VF_CAP_PRIVILEGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct ice_vf *vf)
{
	return FUNC0(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
}