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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct ocelot {size_t** map; int /*<<< orphan*/ * targets; } ;

/* Variables and functions */
 size_t REG_MASK ; 
 size_t TARGET_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,size_t*) ; 

u32 FUNC2(struct ocelot *ocelot, u32 reg, u32 offset)
{
	u16 target = reg >> TARGET_OFFSET;
	u32 val;

	FUNC0(!target);

	FUNC1(ocelot->targets[target],
		    ocelot->map[target][reg & REG_MASK] + offset, &val);
	return val;
}