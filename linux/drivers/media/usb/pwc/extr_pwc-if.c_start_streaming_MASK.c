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
struct vb2_queue {int dummy; } ;
struct pwc_device {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/ * leds ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pwc_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pwc_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pwc_device* FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC7(struct vb2_queue *vq, unsigned int count)
{
	struct pwc_device *pdev = FUNC6(vq);
	int r;

	if (!pdev->udev)
		return -ENODEV;

	if (FUNC0(&pdev->v4l2_lock))
		return -ERESTARTSYS;
	/* Turn on camera and set LEDS on */
	FUNC2(pdev, 1);
	FUNC5(pdev, leds[0], leds[1]);

	r = FUNC4(pdev);
	if (r) {
		/* If we failed turn camera and LEDS back off */
		FUNC5(pdev, 0, 0);
		FUNC2(pdev, 0);
		/* And cleanup any queued bufs!! */
		FUNC3(pdev, VB2_BUF_STATE_QUEUED);
	}
	FUNC1(&pdev->v4l2_lock);

	return r;
}