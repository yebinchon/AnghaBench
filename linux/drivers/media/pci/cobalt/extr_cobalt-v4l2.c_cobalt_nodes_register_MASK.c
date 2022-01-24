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
struct cobalt {int dummy; } ;

/* Variables and functions */
 int COBALT_NUM_STREAMS ; 
 int FUNC0 (struct cobalt*,int) ; 

int FUNC1(struct cobalt *cobalt)
{
	int node, ret;

	/* Setup V4L2 Devices */
	for (node = 0; node < COBALT_NUM_STREAMS; node++) {
		ret = FUNC0(cobalt, node);
		if (ret)
			return ret;
	}
	return 0;
}