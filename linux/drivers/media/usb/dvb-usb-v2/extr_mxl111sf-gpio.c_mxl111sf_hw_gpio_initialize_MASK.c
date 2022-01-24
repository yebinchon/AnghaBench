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
typedef  int u8 ;
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mxl111sf_state *state)
{
	u8 gpioval = 0x07; /* write protect enabled, signal LEDs off */
	int i, ret;

	FUNC1("()");

	for (i = 3; i < 8; i++) {
		ret = FUNC0(state, i, (gpioval >> i) & 0x01);
		if (FUNC2(ret))
			break;
	}

	return ret;
}