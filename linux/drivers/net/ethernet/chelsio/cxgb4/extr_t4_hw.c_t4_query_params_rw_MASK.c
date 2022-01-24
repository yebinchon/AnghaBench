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
typedef  int u32 ;
struct fw_params_cmd {TYPE_1__* param; void* retval_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;
typedef  void* __be32 ;
struct TYPE_2__ {void* val; void* mnem; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_params_cmd) ; 
 int /*<<< orphan*/  FW_PARAMS_CMD ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_params_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,unsigned int,struct fw_params_cmd*,int,struct fw_params_cmd*,int) ; 

int FUNC8(struct adapter *adap, unsigned int mbox, unsigned int pf,
		       unsigned int vf, unsigned int nparams, const u32 *params,
		       u32 *val, int rw, bool sleep_ok)
{
	int i, ret;
	struct fw_params_cmd c;
	__be32 *p = &c.param[0].mnem;

	if (nparams > 7)
		return -EINVAL;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC5(FUNC0(FW_PARAMS_CMD) |
				  FW_CMD_REQUEST_F | FW_CMD_READ_F |
				  FUNC2(pf) |
				  FUNC3(vf));
	c.retval_len16 = FUNC5(FUNC1(c));

	for (i = 0; i < nparams; i++) {
		*p++ = FUNC5(*params++);
		if (rw)
			*p = FUNC5(*(val + i));
		p++;
	}

	ret = FUNC7(adap, mbox, &c, sizeof(c), &c, sleep_ok);
	if (ret == 0)
		for (i = 0, p = &c.param[0].val; i < nparams; i++, p += 2)
			*val++ = FUNC4(*p);
	return ret;
}