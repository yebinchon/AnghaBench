
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;
struct i2c_client {int dummy; } ;


 int msp_wake_thread (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_s_frequency(struct v4l2_subdev *sd, const struct v4l2_frequency *freq)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);


 msp_wake_thread(client);
 return 0;
}
