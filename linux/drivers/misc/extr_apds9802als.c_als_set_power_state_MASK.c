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
struct als_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct als_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, bool on_off)
{
	int ret_val;
	struct als_data *data = FUNC0(client);

	FUNC3(&data->mutex);
	ret_val = FUNC1(client, 0x80);
	if (ret_val < 0)
		goto fail;
	if (on_off)
		ret_val = ret_val | 0x01;
	else
		ret_val = ret_val & 0xFE;
	ret_val = FUNC2(client, 0x80, ret_val);
fail:
	FUNC4(&data->mutex);
	return ret_val;
}