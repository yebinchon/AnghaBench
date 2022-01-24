#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct smiapp_sensor {int hvflip_inv_mask; int default_pixel_order; TYPE_3__* vflip; TYPE_2__* hflip; TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_5__ {scalar_t__ val; } ;
struct TYPE_4__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int SMIAPP_IMAGE_ORIENTATION_HFLIP ; 
 int SMIAPP_IMAGE_ORIENTATION_VFLIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC2(struct smiapp_sensor *sensor)
{
	struct i2c_client *client = FUNC1(&sensor->src->sd);
	int flip = 0;

	if (sensor->hflip) {
		if (sensor->hflip->val)
			flip |= SMIAPP_IMAGE_ORIENTATION_HFLIP;

		if (sensor->vflip->val)
			flip |= SMIAPP_IMAGE_ORIENTATION_VFLIP;
	}

	flip ^= sensor->hvflip_inv_mask;

	FUNC0(&client->dev, "flip %d\n", flip);
	return sensor->default_pixel_order ^ flip;
}