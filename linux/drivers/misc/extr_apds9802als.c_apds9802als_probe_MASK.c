#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct als_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct als_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct als_data*) ; 
 struct als_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_als_gr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	int res;
	struct als_data *data;

	data = FUNC5(sizeof(struct als_data), GFP_KERNEL);
	if (data == NULL) {
		FUNC1(&client->dev, "Memory allocation failed\n");
		return -ENOMEM;
	}
	FUNC3(client, data);
	res = FUNC9(&client->dev.kobj, &m_als_gr);
	if (res) {
		FUNC1(&client->dev, "device create file failed\n");
		goto als_error1;
	}
	FUNC2(&client->dev, "ALS chip found\n");
	FUNC0(client);
	FUNC6(&data->mutex);

	FUNC8(&client->dev);
	FUNC7(&client->dev);

	return res;
als_error1:
	FUNC4(data);
	return res;
}