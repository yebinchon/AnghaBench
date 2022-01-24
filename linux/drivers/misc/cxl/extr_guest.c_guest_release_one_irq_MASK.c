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
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_alloc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cxl *adapter, int irq)
{
	FUNC1(&adapter->guest->irq_alloc_lock);
	FUNC0(adapter, irq, 1);
	FUNC2(&adapter->guest->irq_alloc_lock);
}