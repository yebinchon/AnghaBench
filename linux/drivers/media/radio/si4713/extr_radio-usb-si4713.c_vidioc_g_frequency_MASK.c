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
struct v4l2_frequency {int dummy; } ;
struct si4713_usb_device {int /*<<< orphan*/  v4l2_subdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 struct si4713_usb_device* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *vf)
{
	struct si4713_usb_device *radio = FUNC1(file);

	return FUNC0(radio->v4l2_subdev, tuner, g_frequency, vf);
}