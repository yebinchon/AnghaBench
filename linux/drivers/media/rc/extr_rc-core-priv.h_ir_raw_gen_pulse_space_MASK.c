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
struct ir_raw_event {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static inline int FUNC1(struct ir_raw_event **ev,
					 unsigned int *max,
					 unsigned int pulse_width,
					 unsigned int space_width)
{
	if (!*max)
		return -ENOBUFS;
	FUNC0((*ev)++, 1, pulse_width);
	if (!--*max)
		return -ENOBUFS;
	FUNC0((*ev)++, 0, space_width);
	--*max;
	return 0;
}