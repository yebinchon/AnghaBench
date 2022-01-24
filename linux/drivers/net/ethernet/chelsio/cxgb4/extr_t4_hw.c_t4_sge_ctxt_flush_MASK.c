#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {void* msg_ctxtflush; } ;
struct TYPE_4__ {TYPE_1__ idctxt; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int CTXT_EGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_SGE_EGRC ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_SGE_INGC ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FW_LDST_CMD_CTXTFLUSH_F ; 
 int FUNC2 (struct fw_ldst_cmd) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 

int FUNC6(struct adapter *adap, unsigned int mbox, int ctxt_type)
{
	int ret;
	u32 ldst_addrspace;
	struct fw_ldst_cmd c;

	FUNC4(&c, 0, sizeof(c));
	ldst_addrspace = FUNC1(ctxt_type == CTXT_EGRESS ?
						 FW_LDST_ADDRSPC_SGE_EGRC :
						 FW_LDST_ADDRSPC_SGE_INGC);
	c.op_to_addrspace = FUNC3(FUNC0(FW_LDST_CMD) |
					FW_CMD_REQUEST_F | FW_CMD_READ_F |
					ldst_addrspace);
	c.cycles_to_len16 = FUNC3(FUNC2(c));
	c.u.idctxt.msg_ctxtflush = FUNC3(FW_LDST_CMD_CTXTFLUSH_F);

	ret = FUNC5(adap, mbox, &c, sizeof(c), &c);
	return ret;
}