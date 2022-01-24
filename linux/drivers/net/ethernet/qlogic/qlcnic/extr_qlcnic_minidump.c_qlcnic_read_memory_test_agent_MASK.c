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
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct __mem {int size; int addr; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  mem_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int MAX_CTL_CHECK ; 
 int /*<<< orphan*/  QLCNIC_MS_ADDR_HI ; 
 int /*<<< orphan*/  QLCNIC_MS_ADDR_LO ; 
 int /*<<< orphan*/  QLCNIC_MS_CTRL ; 
 int QLCNIC_TA_START_ENABLE ; 
 int TA_CTL_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * qlcnic_ms_read_data ; 

__attribute__((used)) static u32 FUNC8(struct qlcnic_adapter *adapter,
					 struct __mem *mem, __le32 *buffer,
					 int *ret)
{
	u32 addr, data, test;
	int i, reg_read;

	reg_read = mem->size;
	addr = mem->addr;
	/* check for data size of multiple of 16 and 16 byte alignment */
	if ((addr & 0xf) || (reg_read%16)) {
		FUNC2(&adapter->pdev->dev,
			 "Unaligned memory addr:0x%x size:0x%x\n",
			 addr, reg_read);
		*ret = -EINVAL;
		return 0;
	}

	FUNC3(&adapter->ahw->mem_lock);

	while (reg_read != 0) {
		FUNC7(adapter, QLCNIC_MS_ADDR_LO, addr);
		FUNC7(adapter, QLCNIC_MS_ADDR_HI, 0);
		FUNC7(adapter, QLCNIC_MS_CTRL, QLCNIC_TA_START_ENABLE);

		for (i = 0; i < MAX_CTL_CHECK; i++) {
			test = FUNC6(adapter, QLCNIC_MS_CTRL);
			if (!(test & TA_CTL_BUSY))
				break;
		}
		if (i == MAX_CTL_CHECK) {
			if (FUNC5()) {
				FUNC1(&adapter->pdev->dev,
					"failed to read through agent\n");
				*ret = -EIO;
				goto out;
			}
		}
		for (i = 0; i < 4; i++) {
			data = FUNC6(adapter, qlcnic_ms_read_data[i]);
			*buffer++ = FUNC0(data);
		}
		addr += 16;
		reg_read -= 16;
		ret += 16;
	}
out:
	FUNC4(&adapter->ahw->mem_lock);
	return mem->size;
}