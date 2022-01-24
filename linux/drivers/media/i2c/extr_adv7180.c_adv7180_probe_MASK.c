#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {int flags; TYPE_1__ entity; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {scalar_t__ irq; TYPE_4__* adapter; int /*<<< orphan*/  dev; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct adv7180_state {scalar_t__ irq; int powered; int /*<<< orphan*/  mutex; void* csi_client; void* vpp_client; TYPE_2__ pad; struct v4l2_subdev sd; scalar_t__ input; struct adv7180_chip_info* chip_info; int /*<<< orphan*/  curr_norm; void* pwdn_gpio; int /*<<< orphan*/  field; struct i2c_client* client; } ;
struct adv7180_chip_info {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7180_DEFAULT_CSI_I2C_ADDR ; 
 int /*<<< orphan*/  ADV7180_DEFAULT_VPP_I2C_ADDR ; 
 int ADV7180_FLAG_I2P ; 
 int ADV7180_FLAG_MIPI_CSI2 ; 
 int ADV7180_FLAG_RESET_POWERED ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEDIA_ENT_F_ATV_DECODER ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  V4L2_FIELD_ALTERNATE ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (struct adv7180_state*) ; 
 int FUNC3 (struct adv7180_state*) ; 
 int /*<<< orphan*/  adv7180_irq ; 
 int /*<<< orphan*/  adv7180_ops ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct adv7180_state* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct adv7180_state*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (struct adv7180_state*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct adv7180_state*) ; 
 int FUNC16 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct i2c_client*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adv7180_state *state;
	struct v4l2_subdev *sd;
	int ret;

	/* Check if the adapter supports the needed features */
	if (!FUNC7(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC19(client, "chip found @ 0x%02x (%s)\n",
		 client->addr, client->adapter->name);

	state = FUNC5(&client->dev, sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;

	state->client = client;
	state->field = V4L2_FIELD_ALTERNATE;
	state->chip_info = (struct adv7180_chip_info *)id->driver_data;

	state->pwdn_gpio = FUNC4(&client->dev, "powerdown",
						   GPIOD_OUT_HIGH);
	if (FUNC0(state->pwdn_gpio)) {
		ret = FUNC1(state->pwdn_gpio);
		FUNC18(client, "request for power pin failed: %d\n", ret);
		return ret;
	}

	if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
		state->csi_client = FUNC8(client->adapter,
				ADV7180_DEFAULT_CSI_I2C_ADDR);
		if (FUNC0(state->csi_client))
			return FUNC1(state->csi_client);
	}

	if (state->chip_info->flags & ADV7180_FLAG_I2P) {
		state->vpp_client = FUNC8(client->adapter,
				ADV7180_DEFAULT_VPP_I2C_ADDR);
		if (FUNC0(state->vpp_client)) {
			ret = FUNC1(state->vpp_client);
			goto err_unregister_csi_client;
		}
	}

	state->irq = client->irq;
	FUNC14(&state->mutex);
	state->curr_norm = V4L2_STD_NTSC;
	if (state->chip_info->flags & ADV7180_FLAG_RESET_POWERED)
		state->powered = true;
	else
		state->powered = false;
	state->input = 0;
	sd = &state->sd;
	FUNC17(sd, client, &adv7180_ops);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;

	ret = FUNC3(state);
	if (ret)
		goto err_unregister_vpp_client;

	state->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_ATV_DECODER;
	ret = FUNC12(&sd->entity, 1, &state->pad);
	if (ret)
		goto err_free_ctrl;

	ret = FUNC10(state);
	if (ret)
		goto err_media_entity_cleanup;

	if (state->irq) {
		ret = FUNC15(client->irq, NULL, adv7180_irq,
					   IRQF_ONESHOT | IRQF_TRIGGER_FALLING,
					   KBUILD_MODNAME, state);
		if (ret)
			goto err_media_entity_cleanup;
	}

	ret = FUNC16(sd);
	if (ret)
		goto err_free_irq;

	return 0;

err_free_irq:
	if (state->irq > 0)
		FUNC6(client->irq, state);
err_media_entity_cleanup:
	FUNC11(&sd->entity);
err_free_ctrl:
	FUNC2(state);
err_unregister_vpp_client:
	FUNC9(state->vpp_client);
err_unregister_csi_client:
	FUNC9(state->csi_client);
	FUNC13(&state->mutex);
	return ret;
}