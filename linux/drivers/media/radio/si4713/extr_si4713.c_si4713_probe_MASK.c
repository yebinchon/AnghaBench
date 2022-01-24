#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct si4713_platform_data {int /*<<< orphan*/  is_platform_device; } ;
struct TYPE_12__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct si4713_device {TYPE_1__ sd; struct platform_device* pd; void* mute; void* tune_ant_cap; void* tune_pwr_level; int /*<<< orphan*/  tune_preemphasis; void* pilot_tone_freq; void* pilot_tone_deviation; void* pilot_tone_enabled; void* compression_release_time; void* compression_attack_time; void* compression_threshold; void* compression_gain; void* compression_enabled; void* limiter_deviation; void* limiter_release_time; void* limiter_enabled; void* rds_radio_text; void* rds_ps_name; void* rds_deviation; int /*<<< orphan*/  rds_alt_freqs; void* rds_alt_freqs_enable; void* rds_dyn_pty; void* rds_ms; void* rds_ta; void* rds_tp; void* rds_stereo; void* rds_art_head; void* rds_compressed; void* rds_pty; void* rds_pi; struct v4l2_ctrl_handler ctrl_handler; int /*<<< orphan*/  work; int /*<<< orphan*/ * vio; int /*<<< orphan*/ * vdd; int /*<<< orphan*/ * gpio_reset; } ;
struct radio_si4713_platform_data {struct i2c_client* subdev; } ;
struct platform_device {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; struct si4713_platform_data* platform_data; } ;
struct i2c_client {int /*<<< orphan*/  name; scalar_t__ irq; TYPE_6__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  si4713_pdev_pdata ;

/* Variables and functions */
 int DEFAULT_ACOMP_ATIME ; 
 int DEFAULT_ACOMP_GAIN ; 
 int DEFAULT_ACOMP_RTIME ; 
 int DEFAULT_ACOMP_THRESHOLD ; 
 int DEFAULT_LIMITER_DEV ; 
 int DEFAULT_LIMITER_RTIME ; 
 int DEFAULT_MUTE ; 
 int DEFAULT_PILOT_DEVIATION ; 
 int DEFAULT_PILOT_FREQUENCY ; 
 int DEFAULT_POWER_LEVEL ; 
 int DEFAULT_RDS_DEVIATION ; 
 int DEFAULT_RDS_PI ; 
 int DEFAULT_RDS_PTY ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_ACOMP_ATTACK_TIME ; 
 int MAX_ACOMP_GAIN ; 
 int MAX_ACOMP_RELEASE_TIME ; 
 int MAX_ACOMP_THRESHOLD ; 
 int MAX_LIMITER_DEVIATION ; 
 int MAX_LIMITER_RELEASE_TIME ; 
 int MAX_PILOT_DEVIATION ; 
 int MAX_PILOT_FREQUENCY ; 
 int MAX_RDS_DEVIATION ; 
 int MAX_RDS_PS_NAME ; 
 int MAX_RDS_RADIO_TEXT ; 
 int MIN_ACOMP_THRESHOLD ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int SI4713_MAX_ANTCAP ; 
 int SI4713_MAX_POWER ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_THRESHOLD ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_RELEASE_TIME ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_ALT_FREQS_ENABLE ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_ARTIFICIAL_HEAD ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_COMPRESSED ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_DYNAMIC_PTY ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_MONO_STEREO ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_MUSIC_SPEECH ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PI ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PS_NAME ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PTY ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_RADIO_TEXT ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_TRAFFIC_PROGRAM ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_ANTENNA_CAPACITOR ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_POWER_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_PREEMPHASIS ; 
 int /*<<< orphan*/  V4L2_PREEMPHASIS_50_uS ; 
 int /*<<< orphan*/  V4L2_PREEMPHASIS_75_uS ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 struct si4713_device* FUNC5 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_6__*,char*) ; 
 int FUNC7 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct si4713_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct platform_device*,struct radio_si4713_platform_data*,int) ; 
 struct platform_device* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  si4713_alt_freqs_ctrl ; 
 int /*<<< orphan*/  si4713_ctrl_ops ; 
 int /*<<< orphan*/  si4713_handler ; 
 int FUNC13 (struct si4713_device*) ; 
 int /*<<< orphan*/  si4713_subdev_ops ; 
 int /*<<< orphan*/  FUNC14 (int,void**) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC18 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client)
{
	struct si4713_device *sdev;
	struct v4l2_ctrl_handler *hdl;
	struct si4713_platform_data *pdata = client->dev.platform_data;
	struct device_node *np = client->dev.of_node;
	struct radio_si4713_platform_data si4713_pdev_pdata;
	struct platform_device *si4713_pdev;
	int rval;

	sdev = FUNC5(&client->dev, sizeof(*sdev), GFP_KERNEL);
	if (!sdev) {
		FUNC3(&client->dev, "Failed to alloc video device.\n");
		rval = -ENOMEM;
		goto exit;
	}

	sdev->gpio_reset = FUNC4(&client->dev, "reset",
						   GPIOD_OUT_LOW);
	if (FUNC0(sdev->gpio_reset)) {
		rval = FUNC1(sdev->gpio_reset);
		FUNC3(&client->dev, "Failed to request gpio: %d\n", rval);
		goto exit;
	}

	sdev->vdd = FUNC6(&client->dev, "vdd");
	if (FUNC0(sdev->vdd)) {
		rval = FUNC1(sdev->vdd);
		if (rval == -EPROBE_DEFER)
			goto exit;

		FUNC2(&client->dev, "no vdd regulator found: %d\n", rval);
		sdev->vdd = NULL;
	}

	sdev->vio = FUNC6(&client->dev, "vio");
	if (FUNC0(sdev->vio)) {
		rval = FUNC1(sdev->vio);
		if (rval == -EPROBE_DEFER)
			goto exit;

		FUNC2(&client->dev, "no vio regulator found: %d\n", rval);
		sdev->vio = NULL;
	}

	FUNC23(&sdev->sd, client, &si4713_subdev_ops);

	FUNC8(&sdev->work);

	hdl = &sdev->ctrl_handler;
	FUNC16(hdl, 20);
	sdev->mute = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, DEFAULT_MUTE);

	sdev->rds_pi = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_PI, 0, 0xffff, 1, DEFAULT_RDS_PI);
	sdev->rds_pty = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_PTY, 0, 31, 1, DEFAULT_RDS_PTY);
	sdev->rds_compressed = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_COMPRESSED, 0, 1, 1, 0);
	sdev->rds_art_head = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_ARTIFICIAL_HEAD, 0, 1, 1, 0);
	sdev->rds_stereo = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_MONO_STEREO, 0, 1, 1, 1);
	sdev->rds_tp = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_TRAFFIC_PROGRAM, 0, 1, 1, 0);
	sdev->rds_ta = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT, 0, 1, 1, 0);
	sdev->rds_ms = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_MUSIC_SPEECH, 0, 1, 1, 1);
	sdev->rds_dyn_pty = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_DYNAMIC_PTY, 0, 1, 1, 0);
	sdev->rds_alt_freqs_enable = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_ALT_FREQS_ENABLE, 0, 1, 1, 0);
	sdev->rds_alt_freqs = FUNC17(hdl, &si4713_alt_freqs_ctrl, NULL);
	sdev->rds_deviation = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_DEVIATION, 0, MAX_RDS_DEVIATION,
			10, DEFAULT_RDS_DEVIATION);
	/*
	 * Report step as 8. From RDS spec, psname
	 * should be 8. But there are receivers which scroll strings
	 * sized as 8xN.
	 */
	sdev->rds_ps_name = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_PS_NAME, 0, MAX_RDS_PS_NAME, 8, 0);
	/*
	 * Report step as 32 (2A block). From RDS spec,
	 * radio text should be 32 for 2A block. But there are receivers
	 * which scroll strings sized as 32xN. Setting default to 32.
	 */
	sdev->rds_radio_text = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_RDS_TX_RADIO_TEXT, 0, MAX_RDS_RADIO_TEXT, 32, 0);

	sdev->limiter_enabled = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_LIMITER_ENABLED, 0, 1, 1, 1);
	sdev->limiter_release_time = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_LIMITER_RELEASE_TIME, 250,
			MAX_LIMITER_RELEASE_TIME, 10, DEFAULT_LIMITER_RTIME);
	sdev->limiter_deviation = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_LIMITER_DEVIATION, 0,
			MAX_LIMITER_DEVIATION, 10, DEFAULT_LIMITER_DEV);

	sdev->compression_enabled = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_COMPRESSION_ENABLED, 0, 1, 1, 1);
	sdev->compression_gain = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_COMPRESSION_GAIN, 0, MAX_ACOMP_GAIN, 1,
			DEFAULT_ACOMP_GAIN);
	sdev->compression_threshold = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_COMPRESSION_THRESHOLD,
			MIN_ACOMP_THRESHOLD, MAX_ACOMP_THRESHOLD, 1,
			DEFAULT_ACOMP_THRESHOLD);
	sdev->compression_attack_time = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME, 0,
			MAX_ACOMP_ATTACK_TIME, 500, DEFAULT_ACOMP_ATIME);
	sdev->compression_release_time = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME, 100000,
			MAX_ACOMP_RELEASE_TIME, 100000, DEFAULT_ACOMP_RTIME);

	sdev->pilot_tone_enabled = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_PILOT_TONE_ENABLED, 0, 1, 1, 1);
	sdev->pilot_tone_deviation = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_PILOT_TONE_DEVIATION, 0, MAX_PILOT_DEVIATION,
			10, DEFAULT_PILOT_DEVIATION);
	sdev->pilot_tone_freq = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_PILOT_TONE_FREQUENCY, 0, MAX_PILOT_FREQUENCY,
			1, DEFAULT_PILOT_FREQUENCY);

	sdev->tune_preemphasis = FUNC19(hdl, &si4713_ctrl_ops,
			V4L2_CID_TUNE_PREEMPHASIS,
			V4L2_PREEMPHASIS_75_uS, 0, V4L2_PREEMPHASIS_50_uS);
	sdev->tune_pwr_level = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_TUNE_POWER_LEVEL, 0, SI4713_MAX_POWER,
			1, DEFAULT_POWER_LEVEL);
	sdev->tune_ant_cap = FUNC18(hdl, &si4713_ctrl_ops,
			V4L2_CID_TUNE_ANTENNA_CAPACITOR, 0, SI4713_MAX_ANTCAP,
			1, 0);

	if (hdl->error) {
		rval = hdl->error;
		goto free_ctrls;
	}
	FUNC14(29, &sdev->mute);
	sdev->sd.ctrl_handler = hdl;

	if (client->irq) {
		rval = FUNC7(&client->dev, client->irq,
			si4713_handler, IRQF_TRIGGER_FALLING,
			client->name, sdev);
		if (rval < 0) {
			FUNC22(&sdev->sd, "Could not request IRQ\n");
			goto free_ctrls;
		}
		FUNC20(1, debug, &sdev->sd, "IRQ requested.\n");
	} else {
		FUNC24(&sdev->sd, "IRQ not configured. Using timeouts.\n");
	}

	rval = FUNC13(sdev);
	if (rval < 0) {
		FUNC22(&sdev->sd, "Failed to probe device information.\n");
		goto free_ctrls;
	}

	if (!np && (!pdata || !pdata->is_platform_device))
		return 0;

	si4713_pdev = FUNC11("radio-si4713", -1);
	if (!si4713_pdev) {
		rval = -ENOMEM;
		goto put_main_pdev;
	}

	si4713_pdev_pdata.subdev = client;
	rval = FUNC10(si4713_pdev, &si4713_pdev_pdata,
					sizeof(si4713_pdev_pdata));
	if (rval)
		goto put_main_pdev;

	rval = FUNC9(si4713_pdev);
	if (rval)
		goto put_main_pdev;

	sdev->pd = si4713_pdev;

	return 0;

put_main_pdev:
	FUNC12(si4713_pdev);
	FUNC21(&sdev->sd);
free_ctrls:
	FUNC15(hdl);
exit:
	return rval;
}