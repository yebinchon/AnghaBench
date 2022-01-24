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
struct fw_eq_ofld_cmd {void* eqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_EQ_OFLD_CMD ; 
 int FUNC1 (unsigned int) ; 
 int FW_EQ_OFLD_CMD_FREE_F ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (struct fw_eq_ofld_cmd) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_eq_ofld_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,unsigned int,struct fw_eq_ofld_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct adapter *adap, unsigned int mbox, unsigned int pf,
		    unsigned int vf, unsigned int eqid)
{
	struct fw_eq_ofld_cmd c;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC5(FUNC0(FW_EQ_OFLD_CMD) |
				  FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
				  FUNC2(pf) |
				  FUNC3(vf));
	c.alloc_to_len16 = FUNC5(FW_EQ_OFLD_CMD_FREE_F | FUNC4(c));
	c.eqid_pkd = FUNC5(FUNC1(eqid));
	return FUNC7(adap, mbox, &c, sizeof(c), NULL);
}