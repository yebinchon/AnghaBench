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
struct v4l2_mbus_framefmt {scalar_t__ code; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_mbus_framefmt const*) ; 
 struct v4l2_mbus_framefmt const* s5k6a3_formats ; 

__attribute__((used)) static const struct v4l2_mbus_framefmt *FUNC1(
	struct v4l2_mbus_framefmt *mf)
{
	int i;

	for (i = 0; i < FUNC0(s5k6a3_formats); i++)
		if (mf->code == s5k6a3_formats[i].code)
			return &s5k6a3_formats[i];

	return &s5k6a3_formats[0];
}