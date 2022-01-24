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
typedef  int /*<<< orphan*/  u16 ;
struct ice_vf {int /*<<< orphan*/  vf_id; int /*<<< orphan*/  vf_states; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; struct ice_vf* vf; struct ice_hw hw; } ;
typedef  enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;
typedef  enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ice_pf *pf, enum virtchnl_ops v_opcode,
		    enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
{
	struct ice_hw *hw = &pf->hw;
	struct ice_vf *vf = pf->vf;
	int i;

	for (i = 0; i < pf->num_alloc_vfs; i++, vf++) {
		/* Not all vfs are enabled so skip the ones that are not */
		if (!FUNC1(ICE_VF_STATE_INIT, vf->vf_states) &&
		    !FUNC1(ICE_VF_STATE_ACTIVE, vf->vf_states))
			continue;

		/* Ignore return value on purpose - a given VF may fail, but
		 * we need to keep going and send to all of them
		 */
		FUNC0(hw, vf->vf_id, v_opcode, v_retval, msg,
				      msglen, NULL);
	}
}