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
struct adv748x_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_SDP_MAP_SEL ; 
 int /*<<< orphan*/  ADV748X_SDP_MAP_SEL_RO_MAIN ; 
 int FUNC0 (struct adv748x_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adv748x_state *state, u8 reg)
{
	int ret;

	/* Select SDP Read-Only Main Map */
	ret = FUNC1(state, ADV748X_SDP_MAP_SEL,
			ADV748X_SDP_MAP_SEL_RO_MAIN);
	if (ret < 0)
		return ret;

	return FUNC0(state, reg);
}