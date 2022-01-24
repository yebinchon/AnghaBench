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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_fwht_pixfmt_info {int dummy; } ;

/* Variables and functions */
 struct v4l2_fwht_pixfmt_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct v4l2_fwht_pixfmt_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct v4l2_fwht_pixfmt_info *FUNC2(u32 fmt)
{
	const struct v4l2_fwht_pixfmt_info *info =
		FUNC0(fmt);

	if (!info)
		info = FUNC1(0);
	return info;
}