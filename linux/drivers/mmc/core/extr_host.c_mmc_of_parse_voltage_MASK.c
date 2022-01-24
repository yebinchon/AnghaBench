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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*,...) ; 

int FUNC5(struct device_node *np, u32 *mask)
{
	const u32 *voltage_ranges;
	int num_ranges, i;

	voltage_ranges = FUNC2(np, "voltage-ranges", &num_ranges);
	if (!voltage_ranges) {
		FUNC3("%pOF: voltage-ranges unspecified\n", np);
		return 0;
	}
	num_ranges = num_ranges / sizeof(*voltage_ranges) / 2;
	if (!num_ranges) {
		FUNC4("%pOF: voltage-ranges empty\n", np);
		return -EINVAL;
	}

	for (i = 0; i < num_ranges; i++) {
		const int j = i * 2;
		u32 ocr_mask;

		ocr_mask = FUNC1(
				FUNC0(voltage_ranges[j]),
				FUNC0(voltage_ranges[j + 1]));
		if (!ocr_mask) {
			FUNC4("%pOF: voltage-range #%d is invalid\n",
				np, i);
			return -EINVAL;
		}
		*mask |= ocr_mask;
	}

	return 1;
}