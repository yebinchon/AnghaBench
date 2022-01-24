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
typedef  char u8 ;
struct v4l2_subdev {int dummy; } ;
struct ks0127 {char* regs; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,char*,int) ; 
 struct ks0127* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subdev *sd, u8 reg, u8 val)
{
	struct i2c_client *client = FUNC3(sd);
	struct ks0127 *ks = FUNC1(sd);
	char msg[] = { reg, val };

	if (FUNC0(client, msg, sizeof(msg)) != sizeof(msg))
		FUNC2(1, debug, sd, "write error\n");

	ks->regs[reg] = val;
}