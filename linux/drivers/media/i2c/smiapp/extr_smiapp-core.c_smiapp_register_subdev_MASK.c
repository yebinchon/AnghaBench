#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  entity; } ;
struct smiapp_subdev {TYPE_3__ sd; int /*<<< orphan*/  pads; int /*<<< orphan*/  npads; } ;
struct smiapp_sensor {TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_5__ {TYPE_2__ sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct i2c_client* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct smiapp_sensor *sensor,
				  struct smiapp_subdev *ssd,
				  struct smiapp_subdev *sink_ssd,
				  u16 source_pad, u16 sink_pad, u32 link_flags)
{
	struct i2c_client *client = FUNC5(&sensor->src->sd);
	int rval;

	if (!sink_ssd)
		return 0;

	rval = FUNC2(&ssd->sd.entity,
				      ssd->npads, ssd->pads);
	if (rval) {
		FUNC0(&client->dev,
			"media_entity_pads_init failed\n");
		return rval;
	}

	rval = FUNC3(sensor->src->sd.v4l2_dev,
					   &ssd->sd);
	if (rval) {
		FUNC0(&client->dev,
			"v4l2_device_register_subdev failed\n");
		return rval;
	}

	rval = FUNC1(&ssd->sd.entity, source_pad,
				     &sink_ssd->sd.entity, sink_pad,
				     link_flags);
	if (rval) {
		FUNC0(&client->dev,
			"media_create_pad_link failed\n");
		FUNC4(&ssd->sd);
		return rval;
	}

	return 0;
}