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
struct netxen_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_ROM_ADDRESS ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_ROM_RDATA ; 
 int FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct netxen_adapter *adapter,
			    int addr, int *valp)
{
	FUNC1(adapter, NETXEN_ROMUSB_ROM_ADDRESS, addr);
	FUNC1(adapter, NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
	FUNC1(adapter, NETXEN_ROMUSB_ROM_ABYTE_CNT, 3);
	FUNC1(adapter, NETXEN_ROMUSB_ROM_INSTR_OPCODE, 0xb);
	if (FUNC2(adapter)) {
		FUNC3("Error waiting for rom done\n");
		return -EIO;
	}
	/* reset abyte_cnt and dummy_byte_cnt */
	FUNC1(adapter, NETXEN_ROMUSB_ROM_ABYTE_CNT, 0);
	FUNC4(10);
	FUNC1(adapter, NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);

	*valp = FUNC0(adapter, NETXEN_ROMUSB_ROM_RDATA);
	return 0;
}