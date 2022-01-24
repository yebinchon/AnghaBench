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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,int) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static unsigned int FUNC2(struct v4l2_subdev *sd)
{
	unsigned int freq;
	int a, b;

	a = FUNC0(sd, 0x06);
	b = FUNC0(sd, 0x3b);
	if (a < 0 || b < 0)
		return 0;
	freq =  a * 1000000 + ((b & 0x30) >> 4) * 250000;

	if (FUNC1(sd)) {
		/* adjust for deep color mode */
		unsigned bits_per_channel = ((FUNC0(sd, 0x0b) & 0x60) >> 4) + 8;

		freq = freq * 8 / bits_per_channel;
	}

	return freq;
}