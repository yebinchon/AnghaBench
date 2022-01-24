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
struct v4l2_frequency_band {int tuner; size_t index; int /*<<< orphan*/  type; } ;
struct msi2500_dev {int /*<<< orphan*/  v4l2_subdev; int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_frequency_band*) ; 
 int EINVAL ; 
 struct v4l2_frequency_band* bands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  enum_freq_bands ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency_band*) ; 
 struct msi2500_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				   struct v4l2_frequency_band *band)
{
	struct msi2500_dev *dev = FUNC3(file);
	int ret;

	FUNC1(dev->dev, "tuner=%d type=%d index=%d\n",
		band->tuner, band->type, band->index);

	if (band->tuner == 0) {
		if (band->index >= FUNC0(bands)) {
			ret = -EINVAL;
		} else {
			*band = bands[band->index];
			ret = 0;
		}
	} else if (band->tuner == 1) {
		ret = FUNC2(dev->v4l2_subdev, tuner,
				       enum_freq_bands, band);
	} else {
		ret = -EINVAL;
	}

	return ret;
}