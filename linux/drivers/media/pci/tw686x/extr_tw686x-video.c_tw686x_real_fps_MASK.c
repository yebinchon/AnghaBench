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
 unsigned int FUNC0 (unsigned long*) ; 
 unsigned long FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long* fps_map ; 
 unsigned int FUNC2 (unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int index, unsigned int max_fps)
{
	unsigned long mask;

	if (!index || index >= FUNC0(fps_map))
		return max_fps;

	mask = FUNC1(max_fps - 1, 0);
	return FUNC2(fps_map[index] & mask);
}