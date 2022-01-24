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
struct fw_params_cmd {TYPE_1__* param; void* retval_len16; void* op_to_vfn; } ;
struct adapter {int /*<<< orphan*/  mbox; int /*<<< orphan*/  pf; } ;
typedef  enum fw_params_param_dev_fwcache { ____Placeholder_fw_params_param_dev_fwcache } fw_params_param_dev_fwcache ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_2__ {void* val; void* mnem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_params_cmd) ; 
 int /*<<< orphan*/  FW_PARAMS_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_FWCACHE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_params_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ,struct fw_params_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC9(struct adapter *adap, enum fw_params_param_dev_fwcache op)
{
	struct fw_params_cmd c;

	FUNC7(&c, 0, sizeof(c));
	c.op_to_vfn =
		FUNC6(FUNC0(FW_PARAMS_CMD) |
			    FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
			    FUNC2(adap->pf) |
			    FUNC3(0));
	c.retval_len16 = FUNC6(FUNC1(c));
	c.param[0].mnem =
		FUNC6(FUNC4(FW_PARAMS_MNEM_DEV) |
			    FUNC5(FW_PARAMS_PARAM_DEV_FWCACHE));
	c.param[0].val = FUNC6(op);

	return FUNC8(adap, adap->mbox, &c, sizeof(c), NULL);
}