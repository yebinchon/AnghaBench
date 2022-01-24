#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct seq_file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int num_ranges; TYPE_1__* range; } ;
struct TYPE_3__ {size_t first; size_t last; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* debug_ranges ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, u32 bank,
				  struct seq_file *s)
{
	unsigned int i;

	for (i = 0; i < debug_ranges[bank].num_ranges; i++) {
		u32 reg;

		for (reg = debug_ranges[bank].range[i].first;
			reg <= debug_ranges[bank].range[i].last;
			reg++) {
			u8 value;
			int err;

			err = FUNC0(dev,
				(u8)bank, (u8)reg, &value);
			if (err < 0) {
				FUNC1(dev, "ab->read fail %d\n", err);
				return err;
			}

			if (s) {
				FUNC4(s, "  [0x%02X/0x%02X]: 0x%02X\n",
					   bank, reg, value);
				/*
				 * Error is not returned here since
				 * the output is wanted in any case
				 */
				if (FUNC3(s))
					return 0;
			} else {
				FUNC2(dev, " [0x%02X/0x%02X]: 0x%02X\n",
					 bank, reg, value);
			}
		}
	}

	return 0;
}