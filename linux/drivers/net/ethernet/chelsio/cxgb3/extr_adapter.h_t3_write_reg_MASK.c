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
typedef  scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MMIO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct adapter *adapter, u32 reg_addr, u32 val)
{
	FUNC0(adapter, MMIO, "setting register 0x%x to 0x%x\n", reg_addr, val);
	FUNC1(val, adapter->regs + reg_addr);
}