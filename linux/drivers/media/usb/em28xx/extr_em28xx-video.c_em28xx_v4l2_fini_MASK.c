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
struct em28xx_v4l2 {int /*<<< orphan*/  ref; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  vdev; int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  radio_dev; } ;
struct em28xx {int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; TYPE_1__* intf; int /*<<< orphan*/  has_video; scalar_t__ is_audio_only; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_ANALOG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  em28xx_free_device ; 
 int /*<<< orphan*/  em28xx_free_v4l2 ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct em28xx *dev)
{
	struct em28xx_v4l2 *v4l2 = dev->v4l2;

	if (dev->is_audio_only) {
		/* Shouldn't initialize IR for this interface */
		return 0;
	}

	if (!dev->has_video) {
		/* This device does not support the v4l2 extension */
		return 0;
	}

	if (!v4l2)
		return 0;

	FUNC0(&dev->intf->dev, "Closing video extension\n");

	FUNC4(&dev->lock);

	FUNC7(&v4l2->v4l2_dev);

	FUNC1(dev, EM28XX_ANALOG_MODE);

	FUNC2(dev);

	if (FUNC10(&v4l2->radio_dev)) {
		FUNC0(&dev->intf->dev, "V4L2 device %s deregistered\n",
			 FUNC9(&v4l2->radio_dev));
		FUNC11(&v4l2->radio_dev);
	}
	if (FUNC10(&v4l2->vbi_dev)) {
		FUNC0(&dev->intf->dev, "V4L2 device %s deregistered\n",
			 FUNC9(&v4l2->vbi_dev));
		FUNC11(&v4l2->vbi_dev);
	}
	if (FUNC10(&v4l2->vdev)) {
		FUNC0(&dev->intf->dev, "V4L2 device %s deregistered\n",
			 FUNC9(&v4l2->vdev));
		FUNC11(&v4l2->vdev);
	}

	FUNC6(&v4l2->ctrl_handler);
	FUNC8(&v4l2->v4l2_dev);

	FUNC3(&v4l2->ref, em28xx_free_v4l2);

	FUNC5(&dev->lock);

	FUNC3(&dev->ref, em28xx_free_device);

	return 0;
}