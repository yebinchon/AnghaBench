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
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int enable; scalar_t__ output; scalar_t__ input; } ;

/* Variables and functions */
 scalar_t__ TVP5150_BLACK_SCREEN ; 
 struct tvp5150* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			     u32 input, u32 output, u32 config)
{
	struct tvp5150 *decoder = FUNC0(sd);

	decoder->input = input;
	decoder->output = output;

	if (output == TVP5150_BLACK_SCREEN)
		decoder->enable = false;
	else
		decoder->enable = true;

	FUNC1(sd);
	return 0;
}