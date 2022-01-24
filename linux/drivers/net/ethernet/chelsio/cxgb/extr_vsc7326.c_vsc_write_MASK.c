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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC3(adapter_t *adapter, u32 addr, u32 data)
{
	FUNC0(&adapter->mac_lock);
	FUNC2(adapter, (addr << 2) + 4, data & 0xFFFF);
	FUNC2(adapter, addr << 2, (data >> 16) & 0xFFFF);
	/* pr_err("wr: block: 0x%x  sublock: 0x%x  reg: 0x%x  data: 0x%x\n",
		((addr&0xe000)>>13), ((addr&0x1e00)>>9),
		((addr&0x01fe)>>1), data); */
	FUNC1(&adapter->mac_lock);
}