
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner {scalar_t__ mode; unsigned int radio_freq; unsigned int tv_freq; int sd; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ V4L2_TUNER_RADIO ;
 int set_radio_freq (struct i2c_client*,unsigned int) ;
 int set_tv_freq (struct i2c_client*,unsigned int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void set_freq(struct tuner *t, unsigned int freq)
{
 struct i2c_client *client = v4l2_get_subdevdata(&t->sd);

 if (t->mode == V4L2_TUNER_RADIO) {
  if (!freq)
   freq = t->radio_freq;
  set_radio_freq(client, freq);
 } else {
  if (!freq)
   freq = t->tv_freq;
  set_tv_freq(client, freq);
 }
}
