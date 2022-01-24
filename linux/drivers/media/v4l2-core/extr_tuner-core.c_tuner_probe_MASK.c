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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  callback; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_3__ entity; } ;
struct tuner {char* name; int standby; double radio_freq; int tv_freq; int mode_mask; int /*<<< orphan*/  type; int /*<<< orphan*/  list; TYPE_1__ fe; int /*<<< orphan*/  config; int /*<<< orphan*/  mode; TYPE_2__ sd; TYPE_4__* pad; struct i2c_client* i2c; int /*<<< orphan*/  audmode; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_8__ {void* sig_type; void* flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IF_VID_DEC_PAD_IF_INPUT ; 
 int /*<<< orphan*/  IF_VID_DEC_PAD_NUM_PADS ; 
 size_t IF_VID_DEC_PAD_OUT ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IF_VID_DECODER ; 
 int /*<<< orphan*/  MEDIA_ENT_F_TUNER ; 
 void* MEDIA_PAD_FL_SINK ; 
 void* MEDIA_PAD_FL_SOURCE ; 
 void* PAD_SIGNAL_ANALOG ; 
 void* PAD_SIGNAL_AUDIO ; 
 int /*<<< orphan*/  TUNER_NUM_PADS ; 
 size_t TUNER_PAD_AUD_OUT ; 
 size_t TUNER_PAD_OUTPUT ; 
 size_t TUNER_PAD_RF_INPUT ; 
 int /*<<< orphan*/  TUNER_TDA9887 ; 
 int /*<<< orphan*/  TUNER_TEA5761 ; 
 int /*<<< orphan*/  TUNER_TEA5767 ; 
 int T_ANALOG_TV ; 
 int T_RADIO ; 
 int /*<<< orphan*/  UNSET ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tuner*) ; 
 struct tuner* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_autodetect ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ show_i2c ; 
 int /*<<< orphan*/  tda829x_probe ; 
 int /*<<< orphan*/  tea5761_autodetection ; 
 int /*<<< orphan*/  tea5767_autodetection ; 
 int /*<<< orphan*/  tuner_list ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct tuner**,struct tuner**) ; 
 int /*<<< orphan*/  tuner_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct tuner *t;
	struct tuner *radio;
	struct tuner *tv;
#ifdef CONFIG_MEDIA_CONTROLLER
	int ret;
#endif

	t = FUNC3(sizeof(struct tuner), GFP_KERNEL);
	if (NULL == t)
		return -ENOMEM;
	FUNC12(&t->sd, client, &tuner_ops);
	t->i2c = client;
	t->name = "(tuner unset)";
	t->type = UNSET;
	t->audmode = V4L2_TUNER_MODE_STEREO;
	t->standby = true;
	t->radio_freq = 87.5 * 16000;	/* Initial freq range */
	t->tv_freq = 400 * 16; /* Sets freq to VHF High - needed for some PLL's to properly start */

	if (show_i2c) {
		unsigned char buffer[16];
		int rc;

		FUNC6(buffer, 0, sizeof(buffer));
		rc = FUNC1(client, buffer, sizeof(buffer));
		if (rc >= 0)
			FUNC8("I2C RECV = %*ph\n", rc, buffer);
	}

	/* autodetection code based on the i2c addr */
	if (!no_autodetect) {
		switch (client->addr) {
		case 0x10:
			if (FUNC11(tea5761_autodetection,
					       t->i2c->adapter,
					       t->i2c->addr) >= 0) {
				t->type = TUNER_TEA5761;
				t->mode_mask = T_RADIO;
				FUNC10(t->i2c->adapter, &radio, &tv);
				if (tv)
					tv->mode_mask &= ~T_RADIO;

				goto register_client;
			}
			FUNC2(t);
			return -ENODEV;
		case 0x42:
		case 0x43:
		case 0x4a:
		case 0x4b:
			/* If chip is not tda8290, don't register.
			   since it can be tda9887*/
			if (FUNC11(tda829x_probe, t->i2c->adapter,
					       t->i2c->addr) >= 0) {
				FUNC0("tda829x detected\n");
			} else {
				/* Default is being tda9887 */
				t->type = TUNER_TDA9887;
				t->mode_mask = T_RADIO | T_ANALOG_TV;
				goto register_client;
			}
			break;
		case 0x60:
			if (FUNC11(tea5767_autodetection,
					       t->i2c->adapter, t->i2c->addr)
					>= 0) {
				t->type = TUNER_TEA5767;
				t->mode_mask = T_RADIO;
				/* Sets freq to FM range */
				FUNC10(t->i2c->adapter, &radio, &tv);
				if (tv)
					tv->mode_mask &= ~T_RADIO;

				goto register_client;
			}
			break;
		}
	}

	/* Initializes only the first TV tuner on this adapter. Why only the
	   first? Because there are some devices (notably the ones with TI
	   tuners) that have more than one i2c address for the *same* device.
	   Experience shows that, except for just one case, the first
	   address is the right one. The exception is a Russian tuner
	   (ACORP_Y878F). So, the desired behavior is just to enable the
	   first found TV tuner. */
	FUNC10(t->i2c->adapter, &radio, &tv);
	if (tv == NULL) {
		t->mode_mask = T_ANALOG_TV;
		if (radio == NULL)
			t->mode_mask |= T_RADIO;
		FUNC0("Setting mode_mask to 0x%02x\n", t->mode_mask);
	}

	/* Should be just before return */
register_client:
#if defined(CONFIG_MEDIA_CONTROLLER)
	t->sd.entity.name = t->name;
	/*
	 * Handle the special case where the tuner has actually
	 * two stages: the PLL to tune into a frequency and the
	 * IF-PLL demodulator (tda988x).
	 */
	if (t->type == TUNER_TDA9887) {
		t->pad[IF_VID_DEC_PAD_IF_INPUT].flags = MEDIA_PAD_FL_SINK;
		t->pad[IF_VID_DEC_PAD_IF_INPUT].sig_type = PAD_SIGNAL_ANALOG;
		t->pad[IF_VID_DEC_PAD_OUT].flags = MEDIA_PAD_FL_SOURCE;
		t->pad[IF_VID_DEC_PAD_OUT].sig_type = PAD_SIGNAL_ANALOG;
		ret = media_entity_pads_init(&t->sd.entity,
					     IF_VID_DEC_PAD_NUM_PADS,
					     &t->pad[0]);
		t->sd.entity.function = MEDIA_ENT_F_IF_VID_DECODER;
	} else {
		t->pad[TUNER_PAD_RF_INPUT].flags = MEDIA_PAD_FL_SINK;
		t->pad[TUNER_PAD_RF_INPUT].sig_type = PAD_SIGNAL_ANALOG;
		t->pad[TUNER_PAD_OUTPUT].flags = MEDIA_PAD_FL_SOURCE;
		t->pad[TUNER_PAD_OUTPUT].sig_type = PAD_SIGNAL_ANALOG;
		t->pad[TUNER_PAD_AUD_OUT].flags = MEDIA_PAD_FL_SOURCE;
		t->pad[TUNER_PAD_AUD_OUT].sig_type = PAD_SIGNAL_AUDIO;
		ret = media_entity_pads_init(&t->sd.entity, TUNER_NUM_PADS,
					     &t->pad[0]);
		t->sd.entity.function = MEDIA_ENT_F_TUNER;
	}

	if (ret < 0) {
		pr_err("failed to initialize media entity!\n");
		kfree(t);
		return ret;
	}
#endif
	/* Sets a default mode */
	if (t->mode_mask & T_ANALOG_TV)
		t->mode = V4L2_TUNER_ANALOG_TV;
	else
		t->mode = V4L2_TUNER_RADIO;
	FUNC9(client, t->type, t->mode_mask, t->config, t->fe.callback);
	FUNC4(&t->list, &tuner_list);

	FUNC8("Tuner %d found with type(s)%s%s.\n",
		   t->type,
		   t->mode_mask & T_RADIO ? " Radio" : "",
		   t->mode_mask & T_ANALOG_TV ? " TV" : "");
	return 0;
}