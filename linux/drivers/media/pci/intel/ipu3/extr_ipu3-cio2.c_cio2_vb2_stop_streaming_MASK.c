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
struct vb2_queue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct cio2_queue {TYPE_1__ vdev; int /*<<< orphan*/  sensor; } ;
struct cio2_device {int streaming; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct cio2_device*,struct cio2_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct cio2_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cio2_device* FUNC7 (struct vb2_queue*) ; 
 struct cio2_queue* FUNC8 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC9(struct vb2_queue *vq)
{
	struct cio2_queue *q = FUNC8(vq);
	struct cio2_device *cio2 = FUNC7(vq);

	if (FUNC6(q->sensor, video, s_stream, 0))
		FUNC2(&cio2->pci_dev->dev,
			"failed to stop sensor streaming\n");

	FUNC0(cio2, q);
	FUNC5(cio2->pci_dev->irq);
	FUNC1(q, VB2_BUF_STATE_ERROR);
	FUNC3(&q->vdev.entity);
	FUNC4(&cio2->pci_dev->dev);
	cio2->streaming = false;
}