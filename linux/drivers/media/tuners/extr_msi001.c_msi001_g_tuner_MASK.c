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
struct v4l2_tuner {int capability; int rangelow; int rangehigh; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  index; } ;
struct v4l2_subdev {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct msi001_dev {struct spi_device* spi; } ;

/* Variables and functions */
 int V4L2_TUNER_CAP_1HZ ; 
 int V4L2_TUNER_CAP_FREQ_BANDS ; 
 int /*<<< orphan*/  V4L2_TUNER_RF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct msi001_dev* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_tuner *v)
{
	struct msi001_dev *dev = FUNC1(sd);
	struct spi_device *spi = dev->spi;

	FUNC0(&spi->dev, "index=%d\n", v->index);

	FUNC2(v->name, "Mirics MSi001", sizeof(v->name));
	v->type = V4L2_TUNER_RF;
	v->capability = V4L2_TUNER_CAP_1HZ | V4L2_TUNER_CAP_FREQ_BANDS;
	v->rangelow =    49000000;
	v->rangehigh =  960000000;

	return 0;
}