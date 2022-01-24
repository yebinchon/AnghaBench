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
struct qed_vf_info {int b_malicious; int /*<<< orphan*/  abs_vf_id; } ;
struct qed_hwfn {int dummy; } ;
struct malicious_vf_eqe_data {int /*<<< orphan*/  err_id; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qed_vf_info* FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn,
				     struct malicious_vf_eqe_data *p_data)
{
	struct qed_vf_info *p_vf;

	p_vf = FUNC2(p_hwfn, p_data->vf_id);

	if (!p_vf)
		return;

	if (!p_vf->b_malicious) {
		FUNC1(p_hwfn,
			  "VF [%d] - Malicious behavior [%02x]\n",
			  p_vf->abs_vf_id, p_data->err_id);

		p_vf->b_malicious = true;
	} else {
		FUNC0(p_hwfn,
			"VF [%d] - Malicious behavior [%02x]\n",
			p_vf->abs_vf_id, p_data->err_id);
	}
}