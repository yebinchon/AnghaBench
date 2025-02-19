
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct si4713_platform_data {int is_platform_device; } ;
struct TYPE_12__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct si4713_device {TYPE_1__ sd; struct platform_device* pd; void* mute; void* tune_ant_cap; void* tune_pwr_level; int tune_preemphasis; void* pilot_tone_freq; void* pilot_tone_deviation; void* pilot_tone_enabled; void* compression_release_time; void* compression_attack_time; void* compression_threshold; void* compression_gain; void* compression_enabled; void* limiter_deviation; void* limiter_release_time; void* limiter_enabled; void* rds_radio_text; void* rds_ps_name; void* rds_deviation; int rds_alt_freqs; void* rds_alt_freqs_enable; void* rds_dyn_pty; void* rds_ms; void* rds_ta; void* rds_tp; void* rds_stereo; void* rds_art_head; void* rds_compressed; void* rds_pty; void* rds_pi; struct v4l2_ctrl_handler ctrl_handler; int work; int * vio; int * vdd; int * gpio_reset; } ;
struct radio_si4713_platform_data {struct i2c_client* subdev; } ;
struct platform_device {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; struct si4713_platform_data* platform_data; } ;
struct i2c_client {int name; scalar_t__ irq; TYPE_6__ dev; } ;
struct device_node {int dummy; } ;
typedef int si4713_pdev_pdata ;


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
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int *) ;
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
 int PTR_ERR (int *) ;
 int SI4713_MAX_ANTCAP ;
 int SI4713_MAX_POWER ;
 int V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME ;
 int V4L2_CID_AUDIO_COMPRESSION_ENABLED ;
 int V4L2_CID_AUDIO_COMPRESSION_GAIN ;
 int V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME ;
 int V4L2_CID_AUDIO_COMPRESSION_THRESHOLD ;
 int V4L2_CID_AUDIO_LIMITER_DEVIATION ;
 int V4L2_CID_AUDIO_LIMITER_ENABLED ;
 int V4L2_CID_AUDIO_LIMITER_RELEASE_TIME ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_PILOT_TONE_DEVIATION ;
 int V4L2_CID_PILOT_TONE_ENABLED ;
 int V4L2_CID_PILOT_TONE_FREQUENCY ;
 int V4L2_CID_RDS_TX_ALT_FREQS_ENABLE ;
 int V4L2_CID_RDS_TX_ARTIFICIAL_HEAD ;
 int V4L2_CID_RDS_TX_COMPRESSED ;
 int V4L2_CID_RDS_TX_DEVIATION ;
 int V4L2_CID_RDS_TX_DYNAMIC_PTY ;
 int V4L2_CID_RDS_TX_MONO_STEREO ;
 int V4L2_CID_RDS_TX_MUSIC_SPEECH ;
 int V4L2_CID_RDS_TX_PI ;
 int V4L2_CID_RDS_TX_PS_NAME ;
 int V4L2_CID_RDS_TX_PTY ;
 int V4L2_CID_RDS_TX_RADIO_TEXT ;
 int V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT ;
 int V4L2_CID_RDS_TX_TRAFFIC_PROGRAM ;
 int V4L2_CID_TUNE_ANTENNA_CAPACITOR ;
 int V4L2_CID_TUNE_POWER_LEVEL ;
 int V4L2_CID_TUNE_PREEMPHASIS ;
 int V4L2_PREEMPHASIS_50_uS ;
 int V4L2_PREEMPHASIS_75_uS ;
 int debug ;
 int dev_dbg (TYPE_6__*,char*,int) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int * devm_gpiod_get_optional (TYPE_6__*,char*,int ) ;
 struct si4713_device* devm_kzalloc (TYPE_6__*,int,int ) ;
 void* devm_regulator_get_optional (TYPE_6__*,char*) ;
 int devm_request_irq (TYPE_6__*,scalar_t__,int ,int ,int ,struct si4713_device*) ;
 int init_completion (int *) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,struct radio_si4713_platform_data*,int) ;
 struct platform_device* platform_device_alloc (char*,int) ;
 int platform_device_put (struct platform_device*) ;
 int si4713_alt_freqs_ctrl ;
 int si4713_ctrl_ops ;
 int si4713_handler ;
 int si4713_initialize (struct si4713_device*) ;
 int si4713_subdev_ops ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 int v4l2_dbg (int,int ,TYPE_1__*,char*) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;
 int v4l2_warn (TYPE_1__*,char*) ;

__attribute__((used)) static int si4713_probe(struct i2c_client *client)
{
 struct si4713_device *sdev;
 struct v4l2_ctrl_handler *hdl;
 struct si4713_platform_data *pdata = client->dev.platform_data;
 struct device_node *np = client->dev.of_node;
 struct radio_si4713_platform_data si4713_pdev_pdata;
 struct platform_device *si4713_pdev;
 int rval;

 sdev = devm_kzalloc(&client->dev, sizeof(*sdev), GFP_KERNEL);
 if (!sdev) {
  dev_err(&client->dev, "Failed to alloc video device.\n");
  rval = -ENOMEM;
  goto exit;
 }

 sdev->gpio_reset = devm_gpiod_get_optional(&client->dev, "reset",
         GPIOD_OUT_LOW);
 if (IS_ERR(sdev->gpio_reset)) {
  rval = PTR_ERR(sdev->gpio_reset);
  dev_err(&client->dev, "Failed to request gpio: %d\n", rval);
  goto exit;
 }

 sdev->vdd = devm_regulator_get_optional(&client->dev, "vdd");
 if (IS_ERR(sdev->vdd)) {
  rval = PTR_ERR(sdev->vdd);
  if (rval == -EPROBE_DEFER)
   goto exit;

  dev_dbg(&client->dev, "no vdd regulator found: %d\n", rval);
  sdev->vdd = ((void*)0);
 }

 sdev->vio = devm_regulator_get_optional(&client->dev, "vio");
 if (IS_ERR(sdev->vio)) {
  rval = PTR_ERR(sdev->vio);
  if (rval == -EPROBE_DEFER)
   goto exit;

  dev_dbg(&client->dev, "no vio regulator found: %d\n", rval);
  sdev->vio = ((void*)0);
 }

 v4l2_i2c_subdev_init(&sdev->sd, client, &si4713_subdev_ops);

 init_completion(&sdev->work);

 hdl = &sdev->ctrl_handler;
 v4l2_ctrl_handler_init(hdl, 20);
 sdev->mute = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, DEFAULT_MUTE);

 sdev->rds_pi = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_PI, 0, 0xffff, 1, DEFAULT_RDS_PI);
 sdev->rds_pty = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_PTY, 0, 31, 1, DEFAULT_RDS_PTY);
 sdev->rds_compressed = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_COMPRESSED, 0, 1, 1, 0);
 sdev->rds_art_head = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_ARTIFICIAL_HEAD, 0, 1, 1, 0);
 sdev->rds_stereo = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_MONO_STEREO, 0, 1, 1, 1);
 sdev->rds_tp = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_TRAFFIC_PROGRAM, 0, 1, 1, 0);
 sdev->rds_ta = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT, 0, 1, 1, 0);
 sdev->rds_ms = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_MUSIC_SPEECH, 0, 1, 1, 1);
 sdev->rds_dyn_pty = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_DYNAMIC_PTY, 0, 1, 1, 0);
 sdev->rds_alt_freqs_enable = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_ALT_FREQS_ENABLE, 0, 1, 1, 0);
 sdev->rds_alt_freqs = v4l2_ctrl_new_custom(hdl, &si4713_alt_freqs_ctrl, ((void*)0));
 sdev->rds_deviation = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_DEVIATION, 0, MAX_RDS_DEVIATION,
   10, DEFAULT_RDS_DEVIATION);





 sdev->rds_ps_name = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_PS_NAME, 0, MAX_RDS_PS_NAME, 8, 0);





 sdev->rds_radio_text = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_RDS_TX_RADIO_TEXT, 0, MAX_RDS_RADIO_TEXT, 32, 0);

 sdev->limiter_enabled = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_LIMITER_ENABLED, 0, 1, 1, 1);
 sdev->limiter_release_time = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_LIMITER_RELEASE_TIME, 250,
   MAX_LIMITER_RELEASE_TIME, 10, DEFAULT_LIMITER_RTIME);
 sdev->limiter_deviation = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_LIMITER_DEVIATION, 0,
   MAX_LIMITER_DEVIATION, 10, DEFAULT_LIMITER_DEV);

 sdev->compression_enabled = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_COMPRESSION_ENABLED, 0, 1, 1, 1);
 sdev->compression_gain = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_COMPRESSION_GAIN, 0, MAX_ACOMP_GAIN, 1,
   DEFAULT_ACOMP_GAIN);
 sdev->compression_threshold = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_COMPRESSION_THRESHOLD,
   MIN_ACOMP_THRESHOLD, MAX_ACOMP_THRESHOLD, 1,
   DEFAULT_ACOMP_THRESHOLD);
 sdev->compression_attack_time = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME, 0,
   MAX_ACOMP_ATTACK_TIME, 500, DEFAULT_ACOMP_ATIME);
 sdev->compression_release_time = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME, 100000,
   MAX_ACOMP_RELEASE_TIME, 100000, DEFAULT_ACOMP_RTIME);

 sdev->pilot_tone_enabled = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_PILOT_TONE_ENABLED, 0, 1, 1, 1);
 sdev->pilot_tone_deviation = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_PILOT_TONE_DEVIATION, 0, MAX_PILOT_DEVIATION,
   10, DEFAULT_PILOT_DEVIATION);
 sdev->pilot_tone_freq = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_PILOT_TONE_FREQUENCY, 0, MAX_PILOT_FREQUENCY,
   1, DEFAULT_PILOT_FREQUENCY);

 sdev->tune_preemphasis = v4l2_ctrl_new_std_menu(hdl, &si4713_ctrl_ops,
   V4L2_CID_TUNE_PREEMPHASIS,
   V4L2_PREEMPHASIS_75_uS, 0, V4L2_PREEMPHASIS_50_uS);
 sdev->tune_pwr_level = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_TUNE_POWER_LEVEL, 0, SI4713_MAX_POWER,
   1, DEFAULT_POWER_LEVEL);
 sdev->tune_ant_cap = v4l2_ctrl_new_std(hdl, &si4713_ctrl_ops,
   V4L2_CID_TUNE_ANTENNA_CAPACITOR, 0, SI4713_MAX_ANTCAP,
   1, 0);

 if (hdl->error) {
  rval = hdl->error;
  goto free_ctrls;
 }
 v4l2_ctrl_cluster(29, &sdev->mute);
 sdev->sd.ctrl_handler = hdl;

 if (client->irq) {
  rval = devm_request_irq(&client->dev, client->irq,
   si4713_handler, IRQF_TRIGGER_FALLING,
   client->name, sdev);
  if (rval < 0) {
   v4l2_err(&sdev->sd, "Could not request IRQ\n");
   goto free_ctrls;
  }
  v4l2_dbg(1, debug, &sdev->sd, "IRQ requested.\n");
 } else {
  v4l2_warn(&sdev->sd, "IRQ not configured. Using timeouts.\n");
 }

 rval = si4713_initialize(sdev);
 if (rval < 0) {
  v4l2_err(&sdev->sd, "Failed to probe device information.\n");
  goto free_ctrls;
 }

 if (!np && (!pdata || !pdata->is_platform_device))
  return 0;

 si4713_pdev = platform_device_alloc("radio-si4713", -1);
 if (!si4713_pdev) {
  rval = -ENOMEM;
  goto put_main_pdev;
 }

 si4713_pdev_pdata.subdev = client;
 rval = platform_device_add_data(si4713_pdev, &si4713_pdev_pdata,
     sizeof(si4713_pdev_pdata));
 if (rval)
  goto put_main_pdev;

 rval = platform_device_add(si4713_pdev);
 if (rval)
  goto put_main_pdev;

 sdev->pd = si4713_pdev;

 return 0;

put_main_pdev:
 platform_device_put(si4713_pdev);
 v4l2_device_unregister_subdev(&sdev->sd);
free_ctrls:
 v4l2_ctrl_handler_free(hdl);
exit:
 return rval;
}
