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
struct pf_resources {int /*<<< orphan*/  nethctrl; int /*<<< orphan*/  wx_caps; int /*<<< orphan*/  r_caps; int /*<<< orphan*/  nexactf; int /*<<< orphan*/  nvi; int /*<<< orphan*/  tc; int /*<<< orphan*/  pmask; int /*<<< orphan*/  neq; int /*<<< orphan*/  niq; int /*<<< orphan*/  niqflint; } ;
struct fw_pfvf_cmd {int /*<<< orphan*/  r_caps_to_nethctrl; int /*<<< orphan*/  tc_to_nexactf; int /*<<< orphan*/  type_to_neq; int /*<<< orphan*/  niqflint_niq; void* retval_len16; void* op_to_vfn; } ;
struct TYPE_2__ {struct pf_resources pfres; } ;
struct adapter {int /*<<< orphan*/  mbox; int /*<<< orphan*/  pf; TYPE_1__ params; } ;
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
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct fw_pfvf_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct adapter*,int /*<<< orphan*/ ,struct fw_pfvf_cmd*,int,struct fw_pfvf_cmd*) ; 

int FUNC18(struct adapter *adapter)
{
	struct pf_resources *pfres = &adapter->params.pfres;
	struct fw_pfvf_cmd cmd, rpl;
	int v;
	u32 word;

	/* Execute PFVF Read command to get VF resource limits; bail out early
	 * with error on command failure.
	 */
	FUNC16(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC15(FUNC0(FW_PFVF_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_READ_F |
				    FUNC8(adapter->pf) |
				    FUNC12(0));
	cmd.retval_len16 = FUNC15(FUNC1(cmd));
	v = FUNC17(adapter, adapter->mbox, &cmd, sizeof(cmd), &rpl);
	if (v != FW_SUCCESS)
		return v;

	/* Extract PF resource limits and return success.
	 */
	word = FUNC14(rpl.niqflint_niq);
	pfres->niqflint = FUNC5(word);
	pfres->niq = FUNC6(word);

	word = FUNC14(rpl.type_to_neq);
	pfres->neq = FUNC2(word);
	pfres->pmask = FUNC9(word);

	word = FUNC14(rpl.tc_to_nexactf);
	pfres->tc = FUNC11(word);
	pfres->nvi = FUNC7(word);
	pfres->nexactf = FUNC4(word);

	word = FUNC14(rpl.r_caps_to_nethctrl);
	pfres->r_caps = FUNC10(word);
	pfres->wx_caps = FUNC13(word);
	pfres->nethctrl = FUNC3(word);

	return 0;
}