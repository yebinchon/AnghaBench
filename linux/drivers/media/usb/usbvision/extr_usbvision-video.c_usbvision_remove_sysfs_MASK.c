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
struct video_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_bridge ; 
 int /*<<< orphan*/  dev_attr_brightness ; 
 int /*<<< orphan*/  dev_attr_compression ; 
 int /*<<< orphan*/  dev_attr_contrast ; 
 int /*<<< orphan*/  dev_attr_hue ; 
 int /*<<< orphan*/  dev_attr_model ; 
 int /*<<< orphan*/  dev_attr_saturation ; 
 int /*<<< orphan*/  dev_attr_streaming ; 
 int /*<<< orphan*/  dev_attr_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct video_device *vdev)
{
	if (vdev) {
		FUNC0(&vdev->dev, &dev_attr_version);
		FUNC0(&vdev->dev, &dev_attr_model);
		FUNC0(&vdev->dev, &dev_attr_hue);
		FUNC0(&vdev->dev, &dev_attr_contrast);
		FUNC0(&vdev->dev, &dev_attr_brightness);
		FUNC0(&vdev->dev, &dev_attr_saturation);
		FUNC0(&vdev->dev, &dev_attr_streaming);
		FUNC0(&vdev->dev, &dev_attr_compression);
		FUNC0(&vdev->dev, &dev_attr_bridge);
	}
}