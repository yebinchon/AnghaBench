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
struct cio2_queue {TYPE_1__ vdev; int /*<<< orphan*/  sensor; int /*<<< orphan*/  pipe; int /*<<< orphan*/  frame_sequence; } ;
struct cio2_device {int streaming; TYPE_2__* pci_dev; struct cio2_queue* cur_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cio2_device*,struct cio2_queue*) ; 
 int FUNC2 (struct cio2_device*,struct cio2_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cio2_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cio2_device* FUNC12 (struct vb2_queue*) ; 
 struct cio2_queue* FUNC13 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC14(struct vb2_queue *vq, unsigned int count)
{
	struct cio2_queue *q = FUNC13(vq);
	struct cio2_device *cio2 = FUNC12(vq);
	int r;

	cio2->cur_queue = q;
	FUNC0(&q->frame_sequence, 0);

	r = FUNC8(&cio2->pci_dev->dev);
	if (r < 0) {
		FUNC5(&cio2->pci_dev->dev, "failed to set power %d\n", r);
		FUNC10(&cio2->pci_dev->dev);
		return r;
	}

	r = FUNC6(&q->vdev.entity, &q->pipe);
	if (r)
		goto fail_pipeline;

	r = FUNC2(cio2, q);
	if (r)
		goto fail_hw;

	/* Start streaming on sensor */
	r = FUNC11(q->sensor, video, s_stream, 1);
	if (r)
		goto fail_csi2_subdev;

	cio2->streaming = true;

	return 0;

fail_csi2_subdev:
	FUNC1(cio2, q);
fail_hw:
	FUNC7(&q->vdev.entity);
fail_pipeline:
	FUNC4(&cio2->pci_dev->dev, "failed to start streaming (%d)\n", r);
	FUNC3(q, VB2_BUF_STATE_QUEUED);
	FUNC9(&cio2->pci_dev->dev);

	return r;
}