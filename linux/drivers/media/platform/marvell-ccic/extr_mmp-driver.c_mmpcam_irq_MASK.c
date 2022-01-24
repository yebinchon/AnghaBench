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
struct mcam_camera {int /*<<< orphan*/  dev_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  REG_IRQSTAT ; 
 unsigned int FUNC1 (struct mcam_camera*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct mcam_camera*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct mcam_camera *mcam = data;
	unsigned int irqs, handled;

	FUNC3(&mcam->dev_lock);
	irqs = FUNC1(mcam, REG_IRQSTAT);
	handled = FUNC2(mcam, irqs);
	FUNC4(&mcam->dev_lock);
	return FUNC0(handled);
}