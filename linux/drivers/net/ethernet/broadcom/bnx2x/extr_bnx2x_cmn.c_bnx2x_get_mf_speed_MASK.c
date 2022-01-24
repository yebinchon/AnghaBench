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
typedef  int u16 ;
struct TYPE_2__ {int line_speed; } ;
struct bnx2x {int /*<<< orphan*/ * mf_config; TYPE_1__ link_vars; } ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 

u16 FUNC4(struct bnx2x *bp)
{
	u16 line_speed = bp->link_vars.line_speed;
	if (FUNC1(bp)) {
		u16 maxCfg = FUNC3(bp,
						   bp->mf_config[FUNC0(bp)]);

		/* Calculate the current MAX line speed limit for the MF
		 * devices
		 */
		if (FUNC2(bp))
			line_speed = (line_speed * maxCfg) / 100;
		else { /* SD mode */
			u16 vn_max_rate = maxCfg * 100;

			if (vn_max_rate < line_speed)
				line_speed = vn_max_rate;
		}
	}

	return line_speed;
}