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
struct ice_vf {int /*<<< orphan*/  vf_states; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ice_vf*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ice_vf *vf)
{
	if (FUNC1(ICE_VF_STATE_ACTIVE, vf->vf_states))
		FUNC0(vf, false);
}