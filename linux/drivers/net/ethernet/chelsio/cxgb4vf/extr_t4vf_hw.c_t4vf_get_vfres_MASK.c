#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vf_resources {int /*<<< orphan*/  nethctrl; int /*<<< orphan*/  wx_caps; int /*<<< orphan*/  r_caps; int /*<<< orphan*/  nexactf; int /*<<< orphan*/  nvi; int /*<<< orphan*/  tc; int /*<<< orphan*/  pmask; int /*<<< orphan*/  neq; int /*<<< orphan*/  niq; int /*<<< orphan*/  niqflint; } ;
struct fw_pfvf_cmd {int /*<<< orphan*/  r_caps_to_nethctrl; int /*<<< orphan*/  tc_to_nexactf; int /*<<< orphan*/  type_to_neq; int /*<<< orphan*/  niqflint_niq; void* retval_len16; void* op_to_vfn; } ;
struct TYPE_2__ {struct vf_resources vfres; } ;
struct adapter {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_pfvf_cmd) ; 
 int /*<<< orphan*/  FW_PFVF_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct fw_pfvf_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct adapter*,struct fw_pfvf_cmd*,int,struct fw_pfvf_cmd*) ; 

int FUNC16(struct adapter *adapter)
{
	struct vf_resources *vfres = &adapter->params.vfres;
	struct fw_pfvf_cmd cmd, rpl;
	int v;
	u32 word;

	/*
	 * Execute PFVF Read command to get VF resource limits; bail out early
	 * with error on command failure.
	 */
	FUNC14(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC13(FUNC0(FW_PFVF_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_READ_F);
	cmd.retval_len16 = FUNC13(FUNC1(cmd));
	v = FUNC15(adapter, &cmd, sizeof(cmd), &rpl);
	if (v)
		return v;

	/*
	 * Extract VF resource limits and return success.
	 */
	word = FUNC12(rpl.niqflint_niq);
	vfres->niqflint = FUNC5(word);
	vfres->niq = FUNC6(word);

	word = FUNC12(rpl.type_to_neq);
	vfres->neq = FUNC2(word);
	vfres->pmask = FUNC8(word);

	word = FUNC12(rpl.tc_to_nexactf);
	vfres->tc = FUNC10(word);
	vfres->nvi = FUNC7(word);
	vfres->nexactf = FUNC4(word);

	word = FUNC12(rpl.r_caps_to_nethctrl);
	vfres->r_caps = FUNC9(word);
	vfres->wx_caps = FUNC11(word);
	vfres->nethctrl = FUNC3(word);

	return 0;
}