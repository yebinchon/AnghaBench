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
struct xvip_video_format {unsigned int code; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct xvip_video_format*) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct xvip_video_format const* FUNC1 (int /*<<< orphan*/ ) ; 
 struct xvip_video_format* xvip_video_formats ; 

const struct xvip_video_format *FUNC2(unsigned int code)
{
	unsigned int i;

	for (i = 0; i < FUNC0(xvip_video_formats); ++i) {
		const struct xvip_video_format *format = &xvip_video_formats[i];

		if (format->code == code)
			return format;
	}

	return FUNC1(-EINVAL);
}