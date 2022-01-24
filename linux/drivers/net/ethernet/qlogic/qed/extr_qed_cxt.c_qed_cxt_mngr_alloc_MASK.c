#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_8__ {int /*<<< orphan*/  val; void* reg; } ;
struct TYPE_7__ {void* reg; } ;
struct TYPE_6__ {void* reg; } ;
struct qed_ilt_client_cfg {TYPE_3__ p_size; TYPE_2__ last; TYPE_1__ first; } ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; TYPE_5__* cdev; } ;
struct qed_cxt_mngr {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vf_count; int /*<<< orphan*/ * task_type_size; struct qed_ilt_client_cfg* clients; } ;
struct TYPE_10__ {TYPE_4__* p_iov_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  total_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDUC ; 
 int /*<<< orphan*/  CDUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIRST_ILT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ILT_CLI_CDUC ; 
 size_t ILT_CLI_CDUT ; 
 size_t ILT_CLI_MAX ; 
 size_t ILT_CLI_QM ; 
 size_t ILT_CLI_SRC ; 
 size_t ILT_CLI_TM ; 
 size_t ILT_CLI_TSDM ; 
 int /*<<< orphan*/  ILT_DEFAULT_HW_P_SIZE ; 
 int /*<<< orphan*/  LAST_ILT ; 
 int /*<<< orphan*/  P_SIZE ; 
 int /*<<< orphan*/  QM ; 
 int /*<<< orphan*/  SRC ; 
 int /*<<< orphan*/  TM ; 
 int /*<<< orphan*/  TSDM ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 struct qed_cxt_mngr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct qed_hwfn *p_hwfn)
{
	struct qed_ilt_client_cfg *clients;
	struct qed_cxt_mngr *p_mngr;
	u32 i;

	p_mngr = FUNC3(sizeof(*p_mngr), GFP_KERNEL);
	if (!p_mngr)
		return -ENOMEM;

	/* Initialize ILT client registers */
	clients = p_mngr->clients;
	clients[ILT_CLI_CDUC].first.reg = FUNC0(CDUC, FIRST_ILT);
	clients[ILT_CLI_CDUC].last.reg = FUNC0(CDUC, LAST_ILT);
	clients[ILT_CLI_CDUC].p_size.reg = FUNC0(CDUC, P_SIZE);

	clients[ILT_CLI_QM].first.reg = FUNC0(QM, FIRST_ILT);
	clients[ILT_CLI_QM].last.reg = FUNC0(QM, LAST_ILT);
	clients[ILT_CLI_QM].p_size.reg = FUNC0(QM, P_SIZE);

	clients[ILT_CLI_TM].first.reg = FUNC0(TM, FIRST_ILT);
	clients[ILT_CLI_TM].last.reg = FUNC0(TM, LAST_ILT);
	clients[ILT_CLI_TM].p_size.reg = FUNC0(TM, P_SIZE);

	clients[ILT_CLI_SRC].first.reg = FUNC0(SRC, FIRST_ILT);
	clients[ILT_CLI_SRC].last.reg = FUNC0(SRC, LAST_ILT);
	clients[ILT_CLI_SRC].p_size.reg = FUNC0(SRC, P_SIZE);

	clients[ILT_CLI_CDUT].first.reg = FUNC0(CDUT, FIRST_ILT);
	clients[ILT_CLI_CDUT].last.reg = FUNC0(CDUT, LAST_ILT);
	clients[ILT_CLI_CDUT].p_size.reg = FUNC0(CDUT, P_SIZE);

	clients[ILT_CLI_TSDM].first.reg = FUNC0(TSDM, FIRST_ILT);
	clients[ILT_CLI_TSDM].last.reg = FUNC0(TSDM, LAST_ILT);
	clients[ILT_CLI_TSDM].p_size.reg = FUNC0(TSDM, P_SIZE);
	/* default ILT page size for all clients is 64K */
	for (i = 0; i < ILT_CLI_MAX; i++)
		p_mngr->clients[i].p_size.val = ILT_DEFAULT_HW_P_SIZE;

	/* Initialize task sizes */
	p_mngr->task_type_size[0] = FUNC1(p_hwfn);
	p_mngr->task_type_size[1] = FUNC2(p_hwfn);

	if (p_hwfn->cdev->p_iov_info)
		p_mngr->vf_count = p_hwfn->cdev->p_iov_info->total_vfs;
	/* Initialize the dynamic ILT allocation mutex */
	FUNC4(&p_mngr->mutex);

	/* Set the cxt mangr pointer priori to further allocations */
	p_hwfn->p_cxt_mngr = p_mngr;

	return 0;
}