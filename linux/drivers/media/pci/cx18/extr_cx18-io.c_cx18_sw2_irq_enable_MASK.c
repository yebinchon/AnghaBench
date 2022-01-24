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
typedef  int u32 ;
struct cx18 {int sw2_irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW2_INT_ENABLE_PCI ; 
 int /*<<< orphan*/  SW2_INT_STATUS ; 
 int FUNC0 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct cx18 *cx, u32 val)
{
	FUNC2(cx, val, SW2_INT_STATUS, ~val, val);
	cx->sw2_irq_mask = FUNC0(cx, SW2_INT_ENABLE_PCI) | val;
	FUNC1(cx, cx->sw2_irq_mask, SW2_INT_ENABLE_PCI);
}