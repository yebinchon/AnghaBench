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
struct smiapp_sensor {unsigned int mbus_frame_fmts; unsigned int default_mbus_frame_fmts; int /*<<< orphan*/ * internal_csi_format; int /*<<< orphan*/ * csi_format; TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * pixel_order_str ; 
 int /*<<< orphan*/ * smiapp_csi_data_formats ; 
 unsigned int FUNC4 (struct smiapp_sensor*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct smiapp_sensor *sensor)
{
	struct i2c_client *client = FUNC6(&sensor->src->sd);
	unsigned int csi_format_idx =
		FUNC5(sensor->csi_format) & ~3;
	unsigned int internal_csi_format_idx =
		FUNC5(sensor->internal_csi_format) & ~3;
	unsigned int pixel_order = FUNC4(sensor);

	sensor->mbus_frame_fmts =
		sensor->default_mbus_frame_fmts << pixel_order;
	sensor->csi_format =
		&smiapp_csi_data_formats[csi_format_idx + pixel_order];
	sensor->internal_csi_format =
		&smiapp_csi_data_formats[internal_csi_format_idx
					 + pixel_order];

	FUNC1(FUNC3(internal_csi_format_idx, csi_format_idx) + pixel_order
	       >= FUNC0(smiapp_csi_data_formats));

	FUNC2(&client->dev, "new pixel order %s\n",
		pixel_order_str[pixel_order]);
}