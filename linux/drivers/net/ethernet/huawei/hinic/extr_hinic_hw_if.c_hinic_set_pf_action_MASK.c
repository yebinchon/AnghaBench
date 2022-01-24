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
typedef  enum hinic_pf_action { ____Placeholder_hinic_pf_action } hinic_pf_action ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_CSR_FUNC_ATTR5_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_ACTION ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hinic_hwif *hwif, enum hinic_pf_action action)
{
	u32 attr5 = FUNC2(hwif, HINIC_CSR_FUNC_ATTR5_ADDR);

	attr5 = FUNC0(attr5, PF_ACTION);
	attr5 |= FUNC1(action, PF_ACTION);

	FUNC3(hwif, HINIC_CSR_FUNC_ATTR5_ADDR, attr5);
}