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
struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct ov5695_mode {scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(const struct ov5695_mode *mode,
				struct v4l2_mbus_framefmt *framefmt)
{
	return FUNC0(mode->width - framefmt->width) +
	       FUNC0(mode->height - framefmt->height);
}