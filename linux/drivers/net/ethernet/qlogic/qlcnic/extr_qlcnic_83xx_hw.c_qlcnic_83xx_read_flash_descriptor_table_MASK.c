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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_fdt {int dummy; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  fdt; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_FDT_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(struct qlcnic_adapter *adapter)
{
	int count, fdt_size, ret = 0;

	fdt_size = sizeof(struct qlcnic_fdt);
	count = fdt_size / sizeof(u32);

	if (FUNC1(adapter))
		return -EIO;

	FUNC0(&adapter->ahw->fdt, 0, fdt_size);
	ret = FUNC2(adapter, QLCNIC_FDT_LOCATION,
						(u8 *)&adapter->ahw->fdt,
						count);
	FUNC4((u32 *)&adapter->ahw->fdt, count);
	FUNC3(adapter);
	return ret;
}