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

/* Variables and functions */
 int FUNC0 (unsigned int) ; 

int FUNC1(unsigned int sync_clk)
{
	int div = FUNC0(sync_clk);

	if (div > 4)
		return -1;
	if (div <= 0)
		div = 1;

	return div;
}