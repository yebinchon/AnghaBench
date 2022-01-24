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
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ksz_device {int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static inline int FUNC1(struct ksz_device *dev, u32 reg, u8 *val)
{
	unsigned int value;
	int ret = FUNC0(dev->regmap[0], reg, &value);

	*val = value;
	return ret;
}