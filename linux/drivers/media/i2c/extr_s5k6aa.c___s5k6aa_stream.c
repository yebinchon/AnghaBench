
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k6aa {int streaming; int sd; } ;
struct i2c_client {int dummy; } ;


 int REG_G_ENABLE_PREV ;
 int REG_G_ENABLE_PREV_CHG ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int __s5k6aa_stream(struct s5k6aa *s5k6aa, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(&s5k6aa->sd);
 int ret = 0;

 ret = s5k6aa_write(client, REG_G_ENABLE_PREV, enable);
 if (!ret)
  ret = s5k6aa_write(client, REG_G_ENABLE_PREV_CHG, 1);
 if (!ret)
  s5k6aa->streaming = enable;

 return ret;
}
