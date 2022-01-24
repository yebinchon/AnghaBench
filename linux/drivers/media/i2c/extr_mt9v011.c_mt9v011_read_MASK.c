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
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int FUNC1 (struct i2c_client*,char*,int) ; 
 int FUNC2 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned char,...) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, unsigned char addr)
{
	struct i2c_client *c = FUNC5(sd);
	__be16 buffer;
	int rc, val;

	rc = FUNC2(c, &addr, 1);
	if (rc != 1)
		FUNC4(0, debug, sd,
			 "i2c i/o error: rc == %d (should be 1)\n", rc);

	FUNC3(10);

	rc = FUNC1(c, (char *)&buffer, 2);
	if (rc != 2)
		FUNC4(0, debug, sd,
			 "i2c i/o error: rc == %d (should be 2)\n", rc);

	val = FUNC0(buffer);

	FUNC4(2, debug, sd, "mt9v011: read 0x%02x = 0x%04x\n", addr, val);

	return val;
}