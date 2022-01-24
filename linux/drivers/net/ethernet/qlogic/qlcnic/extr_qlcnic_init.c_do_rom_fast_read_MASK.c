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
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_ROM_ADDRESS ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_ROM_RDATA ; 
 int FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter,
			    u32 addr, u32 *valp)
{
	int err = 0;

	FUNC1(adapter, QLCNIC_ROMUSB_ROM_ADDRESS, addr);
	FUNC1(adapter, QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
	FUNC1(adapter, QLCNIC_ROMUSB_ROM_ABYTE_CNT, 3);
	FUNC1(adapter, QLCNIC_ROMUSB_ROM_INSTR_OPCODE, 0xb);
	if (FUNC3(adapter)) {
		FUNC2(&adapter->pdev->dev, "Error waiting for rom done\n");
		return -EIO;
	}
	/* reset abyte_cnt and dummy_byte_cnt */
	FUNC1(adapter, QLCNIC_ROMUSB_ROM_ABYTE_CNT, 0);
	FUNC4(10);
	FUNC1(adapter, QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);

	*valp = FUNC0(adapter, QLCNIC_ROMUSB_ROM_RDATA, &err);
	if (err == -EIO)
		return err;
	return 0;
}