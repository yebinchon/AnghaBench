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
struct sun4i_csi {int dummy; } ;

/* Variables and functions */
 unsigned int CSI_MAX_BUFFER ; 
 int FUNC0 (struct sun4i_csi*,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct sun4i_csi *csi)
{
	unsigned int slot;
	int ret;

	for (slot = 0; slot < CSI_MAX_BUFFER; slot++) {
		ret = FUNC0(csi, slot);
		if (ret)
			return ret;
	}

	return 0;
}