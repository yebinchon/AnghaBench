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
struct cafe_camera {int /*<<< orphan*/  smbus_wait; scalar_t__ registered; struct mcam_camera mcam; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  REG_IRQSTAT ; 
 unsigned int TWSIIRQS ; 
 unsigned int FUNC1 (struct mcam_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (struct mcam_camera*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct cafe_camera *cam = data;
	struct mcam_camera *mcam = &cam->mcam;
	unsigned int irqs, handled;

	FUNC4(&mcam->dev_lock);
	irqs = FUNC1(mcam, REG_IRQSTAT);
	handled = cam->registered && FUNC3(mcam, irqs);
	if (irqs & TWSIIRQS) {
		FUNC2(mcam, REG_IRQSTAT, TWSIIRQS);
		FUNC6(&cam->smbus_wait);
		handled = 1;
	}
	FUNC5(&mcam->dev_lock);
	return FUNC0(handled);
}