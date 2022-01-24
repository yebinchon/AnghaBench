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
struct virtchnl_rss_hena {int hena; } ;
struct i40e_vf {int /*<<< orphan*/  vf_id; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_SET_RSS_HENA ; 
 int FUNC1 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_rss_hena *vrh =
		(struct virtchnl_rss_hena *)msg;
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	i40e_status aq_ret = 0;

	if (!FUNC3(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto err;
	}
	FUNC2(hw, FUNC0(0, vf->vf_id), (u32)vrh->hena);
	FUNC2(hw, FUNC0(1, vf->vf_id),
			  (u32)(vrh->hena >> 32));

	/* send the response to the VF */
err:
	return FUNC1(vf, VIRTCHNL_OP_SET_RSS_HENA, aq_ret);
}