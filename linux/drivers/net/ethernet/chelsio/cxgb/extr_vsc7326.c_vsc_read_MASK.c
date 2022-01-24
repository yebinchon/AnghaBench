#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  mac_lock; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int REG_LOCAL_DATA ; 
 int REG_LOCAL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int*) ; 

__attribute__((used)) static void FUNC4(adapter_t *adapter, u32 addr, u32 *val)
{
	u32 status, vlo, vhi;
	int i;

	FUNC1(&adapter->mac_lock);
	FUNC3(adapter, (addr << 2) + 4, &vlo);
	i = 0;
	do {
		FUNC3(adapter, (REG_LOCAL_STATUS << 2) + 4, &vlo);
		FUNC3(adapter, REG_LOCAL_STATUS << 2, &vhi);
		status = (vhi << 16) | vlo;
		i++;
	} while (((status & 1) == 0) && (i < 50));
	if (i == 50)
		FUNC0("Invalid tpi read from MAC, breaking loop.\n");

	FUNC3(adapter, (REG_LOCAL_DATA << 2) + 4, &vlo);
	FUNC3(adapter, REG_LOCAL_DATA << 2, &vhi);

	*val = (vhi << 16) | vlo;

	/* pr_err("rd: block: 0x%x  sublock: 0x%x  reg: 0x%x  data: 0x%x\n",
		((addr&0xe000)>>13), ((addr&0x1e00)>>9),
		((addr&0x01fe)>>1), *val); */
	FUNC2(&adapter->mac_lock);
}