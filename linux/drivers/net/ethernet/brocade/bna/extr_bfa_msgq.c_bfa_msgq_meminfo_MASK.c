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

/* Variables and functions */
 int /*<<< orphan*/  BFA_DMA_ALIGN_SZ ; 
 int /*<<< orphan*/  BFA_MSGQ_CMDQ_SIZE ; 
 int /*<<< orphan*/  BFA_MSGQ_RSPQ_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32
FUNC1(void)
{
	return FUNC0(BFA_MSGQ_CMDQ_SIZE, BFA_DMA_ALIGN_SZ) +
		FUNC0(BFA_MSGQ_RSPQ_SIZE, BFA_DMA_ALIGN_SZ);
}