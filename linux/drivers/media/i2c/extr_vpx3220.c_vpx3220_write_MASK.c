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
typedef  size_t u8 ;
struct vpx3220 {size_t* reg; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct vpx3220* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,size_t,size_t) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static inline int FUNC3(struct v4l2_subdev *sd, u8 reg, u8 value)
{
	struct i2c_client *client = FUNC2(sd);
	struct vpx3220 *decoder = FUNC0(client);

	decoder->reg[reg] = value;
	return FUNC1(client, reg, value);
}