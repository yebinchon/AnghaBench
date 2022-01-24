#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  regs; } ;
struct cafe_camera {TYPE_2__ mcam; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cafe_camera *cam)
{
	FUNC2(&cam->mcam);
	FUNC0(cam);
	FUNC1(cam->pdev->irq, cam);
	FUNC3(cam->pdev, cam->mcam.regs);
}