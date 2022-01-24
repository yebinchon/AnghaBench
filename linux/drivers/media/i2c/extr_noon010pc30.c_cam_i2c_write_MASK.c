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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct noon010_info {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int,int) ; 
 int FUNC1 (struct noon010_info*,struct i2c_client*,int) ; 
 struct noon010_info* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, u32 reg_addr, u32 val)
{
	struct i2c_client *client = FUNC3(sd);
	struct noon010_info *info = FUNC2(sd);
	int ret = FUNC1(info, client, reg_addr);

	if (ret)
		return ret;
	return FUNC0(client, reg_addr & 0xFF, val);
}