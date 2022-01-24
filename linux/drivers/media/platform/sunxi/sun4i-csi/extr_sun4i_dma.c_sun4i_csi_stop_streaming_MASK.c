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
struct TYPE_4__ {int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct sun4i_csi {TYPE_2__ scratch; int /*<<< orphan*/  dev; TYPE_1__ vdev; int /*<<< orphan*/  qlock; int /*<<< orphan*/  src_subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct sun4i_csi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sun4i_csi* FUNC8 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC9(struct vb2_queue *vq)
{
	struct sun4i_csi *csi = FUNC8(vq);
	unsigned long flags;

	FUNC0(csi->dev, "Stopping capture\n");

	FUNC7(csi->src_subdev, video, s_stream, 0);
	FUNC6(csi);

	/* Release all active buffers */
	FUNC4(&csi->qlock, flags);
	FUNC3(csi, VB2_BUF_STATE_ERROR);
	FUNC5(&csi->qlock, flags);

	FUNC2(&csi->vdev.entity);

	FUNC1(csi->dev, csi->scratch.size, csi->scratch.vaddr,
			  csi->scratch.paddr);
}