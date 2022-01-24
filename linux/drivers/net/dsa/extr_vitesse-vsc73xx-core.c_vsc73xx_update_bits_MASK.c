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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vsc73xx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vsc73xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct vsc73xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vsc73xx *vsc, u8 block, u8 subblock,
			       u8 reg, u32 mask, u32 val)
{
	u32 tmp, orig;
	int ret;

	/* Same read-modify-write algorithm as e.g. regmap */
	ret = FUNC0(vsc, block, subblock, reg, &orig);
	if (ret)
		return ret;
	tmp = orig & ~mask;
	tmp |= val & mask;
	return FUNC1(vsc, block, subblock, reg, tmp);
}