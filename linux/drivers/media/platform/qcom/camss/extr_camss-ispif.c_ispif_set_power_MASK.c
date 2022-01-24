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
struct v4l2_subdev {int dummy; } ;
struct ispif_line {size_t vfe_id; struct ispif_device* ispif; } ;
struct ispif_device {int power_count; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  clock; int /*<<< orphan*/  nclocks; TYPE_1__* intf_cmd; } ;
struct device {int dummy; } ;
struct TYPE_2__ {void* cmd_1; void* cmd_0; } ;

/* Variables and functions */
 void* CMD_ALL_NO_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct ispif_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 struct device* FUNC8 (struct ispif_device*) ; 
 struct ispif_line* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd, int on)
{
	struct ispif_line *line = FUNC9(sd);
	struct ispif_device *ispif = line->ispif;
	struct device *dev = FUNC8(ispif);
	int ret = 0;

	FUNC4(&ispif->power_lock);

	if (on) {
		if (ispif->power_count) {
			/* Power is already on */
			ispif->power_count++;
			goto exit;
		}

		ret = FUNC6(dev);
		if (ret < 0)
			goto exit;

		ret = FUNC1(ispif->nclocks, ispif->clock, dev);
		if (ret < 0) {
			FUNC7(dev);
			goto exit;
		}

		ret = FUNC3(ispif);
		if (ret < 0) {
			FUNC7(dev);
			FUNC0(ispif->nclocks, ispif->clock);
			goto exit;
		}

		ispif->intf_cmd[line->vfe_id].cmd_0 = CMD_ALL_NO_CHANGE;
		ispif->intf_cmd[line->vfe_id].cmd_1 = CMD_ALL_NO_CHANGE;

		ispif->power_count++;
	} else {
		if (ispif->power_count == 0) {
			FUNC2(dev, "ispif power off on power_count == 0\n");
			goto exit;
		} else if (ispif->power_count == 1) {
			FUNC0(ispif->nclocks, ispif->clock);
			FUNC7(dev);
		}

		ispif->power_count--;
	}

exit:
	FUNC5(&ispif->power_lock);

	return ret;
}