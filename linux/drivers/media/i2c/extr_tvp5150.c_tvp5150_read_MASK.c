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
struct tvp5150 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned char,int*) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, unsigned char addr)
{
	struct tvp5150 *decoder = FUNC1(sd);
	int ret, val;

	ret = FUNC0(decoder->regmap, addr, &val);
	if (ret < 0)
		return ret;

	return val;
}