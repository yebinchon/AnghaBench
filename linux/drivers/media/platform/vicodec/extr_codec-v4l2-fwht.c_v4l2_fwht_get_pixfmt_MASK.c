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
typedef  scalar_t__ u32 ;
struct v4l2_fwht_pixfmt_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct v4l2_fwht_pixfmt_info const*) ; 
 struct v4l2_fwht_pixfmt_info const* v4l2_fwht_pixfmts ; 

const struct v4l2_fwht_pixfmt_info *FUNC1(u32 idx)
{
	if (idx >= FUNC0(v4l2_fwht_pixfmts))
		return NULL;
	return v4l2_fwht_pixfmts + idx;
}