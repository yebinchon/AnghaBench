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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int pid; unsigned int did; unsigned int boffset; unsigned int blen; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ i2c; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  ldst_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_I2C ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fw_ldst_cmd) ; 
 unsigned int I2C_PAGE_SIZE ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 

int FUNC7(struct adapter *adap, unsigned int mbox, int port,
	      unsigned int devid, unsigned int offset,
	      unsigned int len, u8 *buf)
{
	struct fw_ldst_cmd ldst_cmd, ldst_rpl;
	unsigned int i2c_max = sizeof(ldst_cmd.u.i2c.data);
	int ret = 0;

	if (len > I2C_PAGE_SIZE)
		return -EINVAL;

	/* Dont allow reads that spans multiple pages */
	if (offset < I2C_PAGE_SIZE && offset + len > I2C_PAGE_SIZE)
		return -EINVAL;

	FUNC5(&ldst_cmd, 0, sizeof(ldst_cmd));
	ldst_cmd.op_to_addrspace =
		FUNC3(FUNC0(FW_LDST_CMD) |
			    FW_CMD_REQUEST_F |
			    FW_CMD_READ_F |
			    FUNC1(FW_LDST_ADDRSPC_I2C));
	ldst_cmd.cycles_to_len16 = FUNC3(FUNC2(ldst_cmd));
	ldst_cmd.u.i2c.pid = (port < 0 ? 0xff : port);
	ldst_cmd.u.i2c.did = devid;

	while (len > 0) {
		unsigned int i2c_len = (len < i2c_max) ? len : i2c_max;

		ldst_cmd.u.i2c.boffset = offset;
		ldst_cmd.u.i2c.blen = i2c_len;

		ret = FUNC6(adap, mbox, &ldst_cmd, sizeof(ldst_cmd),
				 &ldst_rpl);
		if (ret)
			break;

		FUNC4(buf, ldst_rpl.u.i2c.data, i2c_len);
		offset += i2c_len;
		buf += i2c_len;
		len -= i2c_len;
	}

	return ret;
}