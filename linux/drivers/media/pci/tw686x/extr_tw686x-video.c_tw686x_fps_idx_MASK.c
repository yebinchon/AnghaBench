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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int fps, unsigned int max_fps)
{
	unsigned int idx, real_fps;
	int delta;

	/* First guess */
	idx = (12 + 15 * fps) / max_fps;

	/* Minimal possible framerate is 2 frames per second */
	if (!idx)
		return 1;

	/* Check if the difference is bigger than abs(1) and adjust */
	real_fps = FUNC0(idx, max_fps);
	delta = real_fps - fps;
	if (delta < -1)
		idx++;
	else if (delta > 1)
		idx--;

	/* Max framerate */
	if (idx >= 15)
		return 0;

	return idx;
}