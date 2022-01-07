
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct TYPE_2__ {scalar_t__ has_tda9874; } ;
struct tm6000_core {int width; int height; int freq; int lock; int i2c_adap; int v4l2_dev; TYPE_1__ caps; struct v4l2_frequency* norm; int model; } ;


 int I2C_ADDR_TDA9874 ;
 struct v4l2_frequency* V4L2_STD_NTSC_M ;
 int V4L2_TUNER_ANALOG_TV ;
 int fill_board_specific_data (struct tm6000_core*) ;
 int is_generic (int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_modules (struct tm6000_core*) ;
 int s_frequency ;
 int s_std ;
 int tm6000_add_into_devlist (struct tm6000_core*) ;
 int tm6000_config_tuner (struct tm6000_core*) ;
 int tm6000_i2c_register (struct tm6000_core*) ;
 int tm6000_init_extension (struct tm6000_core*) ;
 int tm6000_ir_init (struct tm6000_core*) ;
 int tm6000_v4l2_register (struct tm6000_core*) ;
 int tuner ;
 int use_alternative_detection_method (struct tm6000_core*) ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;
 int v4l2_i2c_new_subdev (int *,int *,char*,int ,int *) ;
 int video ;

__attribute__((used)) static int tm6000_init_dev(struct tm6000_core *dev)
{
 struct v4l2_frequency f;
 int rc = 0;

 mutex_init(&dev->lock);
 mutex_lock(&dev->lock);

 if (!is_generic(dev->model)) {
  rc = fill_board_specific_data(dev);
  if (rc < 0)
   goto err;


  rc = tm6000_i2c_register(dev);
  if (rc < 0)
   goto err;
 } else {

  rc = tm6000_i2c_register(dev);
  if (rc < 0)
   goto err;

  use_alternative_detection_method(dev);

  rc = fill_board_specific_data(dev);
  if (rc < 0)
   goto err;
 }


 dev->width = 720;
 dev->height = 480;
 dev->norm = V4L2_STD_NTSC_M;


 tm6000_config_tuner(dev);


 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_std, dev->norm);


 f.tuner = 0;
 f.type = V4L2_TUNER_ANALOG_TV;
 f.frequency = 3092;
 dev->freq = f.frequency;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, &f);

 if (dev->caps.has_tda9874)
  v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
   "tvaudio", I2C_ADDR_TDA9874, ((void*)0));


 rc = tm6000_v4l2_register(dev);
 if (rc < 0)
  goto err;

 tm6000_add_into_devlist(dev);
 tm6000_init_extension(dev);

 tm6000_ir_init(dev);

 request_modules(dev);

 mutex_unlock(&dev->lock);
 return 0;

err:
 mutex_unlock(&dev->lock);
 return rc;
}
