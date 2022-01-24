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
 int EIO ; 
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 

__attribute__((used)) static int FUNC2(unsigned int sample_flag)
{
	int i;
	int interval;
	unsigned int v;
	unsigned int len;
	unsigned int range_start = 0;
	unsigned int range_length = 0;
	unsigned int middle_range = 0;

	if (!sample_flag)
		return -EIO;

	if (~sample_flag == 0)
		return 0;

	i = FUNC0(sample_flag) - 1;

	/*
	* A clock cycle is divided into 32 phases,
	* each of which is represented by a bit,
	* finding the optimal phase.
	*/
	while (i < 32) {
		v = FUNC1(sample_flag, i);
		len = FUNC0(~v) - 1;

		if (len > range_length) {
			range_length = len;
			range_start = i;
		}

		interval = FUNC0(v >> len) - 1;
		if (interval < 0)
			break;

		i += len + interval;
	}

	middle_range = range_start + range_length / 2;
	if (middle_range >= 32)
		middle_range %= 32;

	return middle_range;
}