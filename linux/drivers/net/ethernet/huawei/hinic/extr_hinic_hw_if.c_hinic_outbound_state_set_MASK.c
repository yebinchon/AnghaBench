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
typedef  enum hinic_outbound_state { ____Placeholder_hinic_outbound_state } hinic_outbound_state ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_CSR_FUNC_ATTR4_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUTBOUND_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hinic_hwif *hwif,
			      enum hinic_outbound_state outbound_state)
{
	u32 attr4 = FUNC2(hwif, HINIC_CSR_FUNC_ATTR4_ADDR);

	attr4 = FUNC0(attr4, OUTBOUND_STATE);
	attr4 |= FUNC1(outbound_state, OUTBOUND_STATE);

	FUNC3(hwif, HINIC_CSR_FUNC_ATTR4_ADDR, attr4);
}