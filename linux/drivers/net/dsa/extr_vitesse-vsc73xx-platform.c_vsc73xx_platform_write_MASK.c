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
typedef  scalar_t__ u32 ;
struct vsc73xx_platform {scalar_t__ base_addr; } ;
struct vsc73xx {struct vsc73xx_platform* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vsc73xx *vsc, u8 block, u8 subblock,
				  u8 reg, u32 val)
{
	struct vsc73xx_platform *vsc_platform = vsc->priv;
	u32 offset;

	if (!FUNC1(block, subblock))
		return -EINVAL;

	offset = FUNC2(block, subblock, reg);
	FUNC0(val, vsc_platform->base_addr + offset);

	return 0;
}