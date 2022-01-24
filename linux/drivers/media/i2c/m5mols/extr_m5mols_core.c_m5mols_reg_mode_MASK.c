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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M5MOLS_MODE_CHANGE_TIMEOUT ; 
 int /*<<< orphan*/  SYSTEM_SYSMODE ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u8 mode)
{
	int ret = FUNC1(sd, SYSTEM_SYSMODE, mode);
	if (ret < 0)
		return ret;
	return FUNC0(sd, SYSTEM_SYSMODE, mode, 0xff,
				M5MOLS_MODE_CHANGE_TIMEOUT);
}