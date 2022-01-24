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
struct lan9303 {int dummy; } ;

/* Variables and functions */
 int LAN9303_NUM_PORTS ; 
 int FUNC0 (struct lan9303*,int) ; 

__attribute__((used)) static int FUNC1(struct lan9303 *chip)
{
	int p;

	for (p = 1; p < LAN9303_NUM_PORTS; p++) {
		int ret = FUNC0(chip, p);

		if (ret)
			return ret;
	}

	return 0;
}