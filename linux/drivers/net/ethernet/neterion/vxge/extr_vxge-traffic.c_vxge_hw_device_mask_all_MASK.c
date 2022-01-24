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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct __vxge_hw_device {TYPE_1__* common_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  titan_mask_all_int; } ;

/* Variables and functions */
 int VXGE_HW_TITAN_MASK_ALL_INT_ALARM ; 
 int VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct __vxge_hw_device *hldev)
{
	u64 val64;

	val64 = VXGE_HW_TITAN_MASK_ALL_INT_ALARM |
		VXGE_HW_TITAN_MASK_ALL_INT_TRAFFIC;

	FUNC0((u32)FUNC1(val64, 0, 32),
				&hldev->common_reg->titan_mask_all_int);
}