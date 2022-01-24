#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  entity; } ;
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct cio2_queue {int /*<<< orphan*/  lock; TYPE_3__ subdev; int /*<<< orphan*/  vbq; TYPE_2__ vdev; } ;
struct cio2_device {TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cio2_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct cio2_device *cio2, struct cio2_queue *q)
{
	FUNC5(&q->vdev);
	FUNC1(&q->vdev.entity);
	FUNC4(&q->vbq);
	FUNC3(&q->subdev);
	FUNC1(&q->subdev.entity);
	FUNC0(q, &cio2->pci_dev->dev);
	FUNC2(&q->lock);
}