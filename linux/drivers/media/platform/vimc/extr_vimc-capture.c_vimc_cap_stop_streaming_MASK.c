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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct vimc_cap_device {TYPE_1__ vdev; int /*<<< orphan*/  ved; int /*<<< orphan*/  stream; } ;
struct vb2_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vimc_cap_device* FUNC1 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vimc_cap_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vb2_queue *vq)
{
	struct vimc_cap_device *vcap = FUNC1(vq);

	FUNC3(&vcap->stream, &vcap->ved, 0);

	/* Stop the media pipeline */
	FUNC0(&vcap->vdev.entity);

	/* Release all active buffers */
	FUNC2(vcap, VB2_BUF_STATE_ERROR);
}