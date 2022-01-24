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
 int /*<<< orphan*/  FUNC0 (int,struct i2c_client const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(const struct i2c_client *client)
{
	int ret;

	FUNC0(ret, client, 0x001a, 0x0001, 0x0001);
	FUNC1(1000, 5000);
	FUNC0(ret, client, 0x001a, 0x0001, 0x0000);

	return ret;
}