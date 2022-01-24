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
typedef  int u32 ;
struct max77620_chip {int chip_id; int sleep_enable; int enable_global_lpm; int /*<<< orphan*/  rmap; void** suspend_fps_period; void** shutdown_fps_period; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MAX20024 130 
 int MAX20024_FPS_PERIOD_MAX_US ; 
#define  MAX77620 129 
 int MAX77620_FPS_COUNT ; 
 unsigned int MAX77620_FPS_ENFPS_SW ; 
 unsigned int MAX77620_FPS_ENFPS_SW_MASK ; 
 unsigned int MAX77620_FPS_EN_SRC_MASK ; 
 int MAX77620_FPS_EN_SRC_SHIFT ; 
 int MAX77620_FPS_PERIOD_MAX_US ; 
 unsigned int MAX77620_FPS_TIME_PERIOD_MASK ; 
 int MAX77620_FPS_TIME_PERIOD_SHIFT ; 
 scalar_t__ MAX77620_REG_FPS_CFG0 ; 
#define  MAX77663 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct max77620_chip*,void*) ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct max77620_chip *chip,
			       struct device_node *fps_np)
{
	struct device *dev = chip->dev;
	unsigned int mask = 0, config = 0;
	u32 fps_max_period;
	u32 param_val;
	int tperiod, fps_id;
	int ret;
	char fps_name[10];

	switch (chip->chip_id) {
	case MAX20024:
		fps_max_period = MAX20024_FPS_PERIOD_MAX_US;
		break;
	case MAX77620:
		fps_max_period = MAX77620_FPS_PERIOD_MAX_US;
		break;
	case MAX77663:
		fps_max_period = MAX20024_FPS_PERIOD_MAX_US;
		break;
	default:
		return -EINVAL;
	}

	for (fps_id = 0; fps_id < MAX77620_FPS_COUNT; fps_id++) {
		FUNC6(fps_name, "fps%d", fps_id);
		if (FUNC3(fps_np, fps_name))
			break;
	}

	if (fps_id == MAX77620_FPS_COUNT) {
		FUNC0(dev, "FPS node name %pOFn is not valid\n", fps_np);
		return -EINVAL;
	}

	ret = FUNC4(fps_np, "maxim,shutdown-fps-time-period-us",
				   &param_val);
	if (!ret) {
		mask |= MAX77620_FPS_TIME_PERIOD_MASK;
		chip->shutdown_fps_period[fps_id] = FUNC2(param_val,
							fps_max_period);
		tperiod = FUNC1(chip,
				chip->shutdown_fps_period[fps_id]);
		config |= tperiod << MAX77620_FPS_TIME_PERIOD_SHIFT;
	}

	ret = FUNC4(fps_np, "maxim,suspend-fps-time-period-us",
				   &param_val);
	if (!ret)
		chip->suspend_fps_period[fps_id] = FUNC2(param_val,
						       fps_max_period);

	ret = FUNC4(fps_np, "maxim,fps-event-source",
				   &param_val);
	if (!ret) {
		if (param_val > 2) {
			FUNC0(dev, "FPS%d event-source invalid\n", fps_id);
			return -EINVAL;
		}
		mask |= MAX77620_FPS_EN_SRC_MASK;
		config |= param_val << MAX77620_FPS_EN_SRC_SHIFT;
		if (param_val == 2) {
			mask |= MAX77620_FPS_ENFPS_SW_MASK;
			config |= MAX77620_FPS_ENFPS_SW;
		}
	}

	if (!chip->sleep_enable && !chip->enable_global_lpm) {
		ret = FUNC4(fps_np,
				"maxim,device-state-on-disabled-event",
				&param_val);
		if (!ret) {
			if (param_val == 0)
				chip->sleep_enable = true;
			else if (param_val == 1)
				chip->enable_global_lpm = true;
		}
	}

	ret = FUNC5(chip->rmap, MAX77620_REG_FPS_CFG0 + fps_id,
				 mask, config);
	if (ret < 0) {
		FUNC0(dev, "Failed to update FPS CFG: %d\n", ret);
		return ret;
	}

	return 0;
}