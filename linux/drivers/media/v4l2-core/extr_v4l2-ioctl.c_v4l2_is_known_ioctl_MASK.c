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
struct TYPE_2__ {unsigned int ioctl; } ;

/* Variables and functions */
 size_t V4L2_IOCTLS ; 
 size_t FUNC0 (unsigned int) ; 
 TYPE_1__* v4l2_ioctls ; 

__attribute__((used)) static bool FUNC1(unsigned int cmd)
{
	if (FUNC0(cmd) >= V4L2_IOCTLS)
		return false;
	return v4l2_ioctls[FUNC0(cmd)].ioctl == cmd;
}