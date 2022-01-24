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
struct fw_params_cmd {void* retval_len16; void* op_to_vfn; TYPE_1__* param; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  mnem; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_params_cmd) ; 
 int /*<<< orphan*/  FW_PARAMS_CMD ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_params_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_params_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC7(struct adapter *adap, unsigned int mbox,
			  unsigned int pf, unsigned int vf,
			  unsigned int nparams, const u32 *params,
			  const u32 *val, int timeout)
{
	struct fw_params_cmd c;
	__be32 *p = &c.param[0].mnem;

	if (nparams > 7)
		return -EINVAL;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC4(FUNC0(FW_PARAMS_CMD) |
				  FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				  FUNC2(pf) |
				  FUNC3(vf));
	c.retval_len16 = FUNC4(FUNC1(c));

	while (nparams--) {
		*p++ = FUNC4(*params++);
		*p++ = FUNC4(*val++);
	}

	return FUNC6(adap, mbox, &c, sizeof(c), NULL, timeout);
}