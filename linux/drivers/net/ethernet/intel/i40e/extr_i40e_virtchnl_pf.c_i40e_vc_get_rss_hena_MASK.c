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
struct virtchnl_rss_hena {int /*<<< orphan*/  hena; } ;
struct i40e_vf {int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {int dummy; } ;
typedef  int i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40E_ERR_NO_MEMORY ; 
 int I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_GET_RSS_HENA_CAPS ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 int FUNC1 (struct i40e_vf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtchnl_rss_hena*) ; 
 struct virtchnl_rss_hena* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_rss_hena *vrh = NULL;
	struct i40e_pf *pf = vf->pf;
	i40e_status aq_ret = 0;
	int len = 0;

	if (!FUNC4(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto err;
	}
	len = sizeof(struct virtchnl_rss_hena);

	vrh = FUNC3(len, GFP_KERNEL);
	if (!vrh) {
		aq_ret = I40E_ERR_NO_MEMORY;
		len = 0;
		goto err;
	}
	vrh->hena = FUNC0(pf);
err:
	/* send the response back to the VF */
	aq_ret = FUNC1(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS,
					aq_ret, (u8 *)vrh, len);
	FUNC2(vrh);
	return aq_ret;
}