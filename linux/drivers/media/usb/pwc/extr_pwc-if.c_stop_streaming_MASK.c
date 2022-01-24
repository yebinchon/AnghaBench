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
struct pwc_device {int /*<<< orphan*/  v4l2_lock; TYPE_1__* fill_buf; scalar_t__ udev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_3__ {TYPE_2__ vb; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pwc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pwc_device* FUNC7 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC8(struct vb2_queue *vq)
{
	struct pwc_device *pdev = FUNC7(vq);

	FUNC0(&pdev->v4l2_lock);
	if (pdev->udev) {
		FUNC5(pdev, 0, 0);
		FUNC2(pdev, 0);
		FUNC4(pdev);
	}

	FUNC3(pdev, VB2_BUF_STATE_ERROR);
	if (pdev->fill_buf)
		FUNC6(&pdev->fill_buf->vb.vb2_buf,
				VB2_BUF_STATE_ERROR);
	FUNC1(&pdev->v4l2_lock);
}