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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct tvp7002 {int /*<<< orphan*/  hdl; TYPE_1__ sd; } ;
struct i2c_client {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tvp7002* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *c)
{
	struct v4l2_subdev *sd = FUNC0(c);
	struct tvp7002 *device = FUNC2(sd);

	FUNC5(1, debug, sd, "Removing tvp7002 adapter"
				"on address 0x%x\n", c->addr);
	FUNC3(&device->sd);
#if defined(CONFIG_MEDIA_CONTROLLER)
	media_entity_cleanup(&device->sd.entity);
#endif
	FUNC4(&device->hdl);
	return 0;
}