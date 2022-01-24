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
struct pl172_data {int rate; int base; } ;
struct device_node {int dummy; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 struct pl172_data* FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node const*,char const*,int*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct amba_device *adev,
			     const struct device_node *np, const char *name,
			     u32 reg_offset, u32 max, int start)
{
	struct pl172_data *pl172 = FUNC1(adev);
	int cycles;
	u32 val;

	if (!FUNC4(np, name, &val)) {
		cycles = FUNC0(val * pl172->rate, NSEC_PER_MSEC) - start;
		if (cycles < 0) {
			cycles = 0;
		} else if (cycles > max) {
			FUNC3(&adev->dev, "%s timing too tight\n", name);
			return -EINVAL;
		}

		FUNC6(cycles, pl172->base + reg_offset);
	}

	FUNC2(&adev->dev, "%s: %u cycle(s)\n", name, start +
				FUNC5(pl172->base + reg_offset));

	return 0;
}