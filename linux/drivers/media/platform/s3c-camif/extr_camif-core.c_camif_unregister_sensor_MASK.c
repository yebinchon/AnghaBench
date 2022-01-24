#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;
struct camif_dev {TYPE_1__ sensor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC4(struct camif_dev *camif)
{
	struct v4l2_subdev *sd = camif->sensor.sd;
	struct i2c_client *client = sd ? FUNC3(sd) : NULL;
	struct i2c_adapter *adapter;

	if (client == NULL)
		return;

	adapter = client->adapter;
	FUNC2(sd);
	camif->sensor.sd = NULL;
	FUNC1(client);
	FUNC0(adapter);
}