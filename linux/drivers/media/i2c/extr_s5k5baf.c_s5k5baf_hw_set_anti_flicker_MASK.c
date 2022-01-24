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
struct s5k5baf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AALG_FLICKER_EN ; 
 int /*<<< orphan*/  REG_SF_FLICKER_QUANT ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct s5k5baf *state, int v)
{
	if (v == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) {
		FUNC0(state, AALG_FLICKER_EN, true);
	} else {
		/* The V4L2_CID_LINE_FREQUENCY control values match
		 * the register values */
		FUNC1(state, REG_SF_FLICKER_QUANT, v, 1);
		FUNC0(state, AALG_FLICKER_EN, false);
	}
}