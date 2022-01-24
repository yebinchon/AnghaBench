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
struct i2c_client {int dummy; } ;

/* Variables and functions */
#define  UDA1342_IN1 129 
#define  UDA1342_IN2 128 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,char*,int) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
		u32 input, u32 output, u32 config)
{
	struct i2c_client *client = FUNC1(sd);

	switch (input) {
	case UDA1342_IN1:
		FUNC2(client, 0x00, 0x1241); /* select input 1 */
		break;
	case UDA1342_IN2:
		FUNC2(client, 0x00, 0x1441); /* select input 2 */
		break;
	default:
		FUNC0(sd, "input %d not supported\n", input);
		break;
	}
	return 0;
}