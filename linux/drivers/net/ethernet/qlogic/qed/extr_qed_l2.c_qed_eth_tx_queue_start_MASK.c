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
struct qed_txq_start_ret_params {void* p_handle; int /*<<< orphan*/  p_doorbell; } ;
struct qed_queue_start_common_params {int dummy; } ;
struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_queue_cid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_queue_cid*) ; 
 struct qed_queue_cid* FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int,struct qed_queue_start_common_params*) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_queue_cid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct qed_hwfn *p_hwfn,
		       u16 opaque_fid,
		       struct qed_queue_start_common_params *p_params,
		       u8 tc,
		       dma_addr_t pbl_addr,
		       u16 pbl_size,
		       struct qed_txq_start_ret_params *p_ret_params)
{
	struct qed_queue_cid *p_cid;
	int rc;

	p_cid = FUNC3(p_hwfn, opaque_fid, false, p_params);
	if (!p_cid)
		return -EINVAL;

	if (FUNC0(p_hwfn->cdev))
		rc = FUNC1(p_hwfn, p_cid, tc,
					       pbl_addr, pbl_size,
					       &p_ret_params->p_doorbell);
	else
		rc = FUNC4(p_hwfn, p_cid,
					 pbl_addr, pbl_size,
					 &p_ret_params->p_doorbell);

	if (rc)
		FUNC2(p_hwfn, p_cid);
	else
		p_ret_params->p_handle = (void *)p_cid;

	return rc;
}