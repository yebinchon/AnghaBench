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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_hwif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_CSR_FUNC_ATTR0_ADDR ; 
 int /*<<< orphan*/  HINIC_CSR_FUNC_ATTR1_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hinic_hwif *hwif)
{
	u32 addr, attr0, attr1;

	addr   = HINIC_CSR_FUNC_ATTR0_ADDR;
	attr0  = FUNC0(hwif, addr);

	addr   = HINIC_CSR_FUNC_ATTR1_ADDR;
	attr1  = FUNC0(hwif, addr);

	FUNC1(hwif, attr0, attr1);
}