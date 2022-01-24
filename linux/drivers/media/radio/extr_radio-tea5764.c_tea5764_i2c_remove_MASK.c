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
struct tea5764_device {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  vdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct tea5764_device* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct tea5764_device *radio = FUNC1(client);

	FUNC0("remove");
	if (radio) {
		FUNC3(radio);
		FUNC6(&radio->vdev);
		FUNC4(&radio->ctrl_handler);
		FUNC5(&radio->v4l2_dev);
		FUNC2(radio);
	}
	return 0;
}