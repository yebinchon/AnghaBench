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
struct sr030pc30_info {scalar_t__ vflip; scalar_t__ hflip; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  VDO_CTL2_REG ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct sr030pc30_info* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct sr030pc30_info *info = FUNC2(sd);

	s32 reg = FUNC0(sd, VDO_CTL2_REG);
	if (reg < 0)
		return reg;

	reg &= 0x7C;
	if (info->hflip)
		reg |= 0x01;
	if (info->vflip)
		reg |= 0x02;
	return FUNC1(sd, VDO_CTL2_REG, reg | 0x80);
}