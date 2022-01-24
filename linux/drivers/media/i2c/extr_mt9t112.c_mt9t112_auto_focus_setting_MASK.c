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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct i2c_client const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct i2c_client const*,int,int) ; 

__attribute__((used)) static int FUNC4(const struct i2c_client *client)
{
	int ret;

	FUNC2(ret, client, FUNC0(12, 13),	0x000F);
	FUNC2(ret, client, FUNC0(12, 23),	0x0F0F);
	FUNC2(ret, client, FUNC1(1, 0),	0x06);

	FUNC3(ret, client, 0x0614, 0x0000);

	FUNC2(ret, client, FUNC1(1, 0),	0x05);
	FUNC2(ret, client, FUNC1(12, 2),	0x02);
	FUNC2(ret, client, FUNC0(12, 3),	0x0002);
	FUNC2(ret, client, FUNC0(17, 3),	0x8001);
	FUNC2(ret, client, FUNC0(17, 11),	0x0025);
	FUNC2(ret, client, FUNC0(17, 13),	0x0193);
	FUNC2(ret, client, FUNC1(17, 33),	0x18);
	FUNC2(ret, client, FUNC1(1, 0),	0x05);

	return ret;
}