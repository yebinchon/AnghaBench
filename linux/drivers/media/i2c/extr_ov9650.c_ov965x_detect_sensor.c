
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov965x {scalar_t__ id; int lock; } ;


 int ENODEV ;
 scalar_t__ OV9650_ID ;
 scalar_t__ OV9652_ID ;
 scalar_t__ OV965X_ID (int ,int ) ;
 int REG_PID ;
 int REG_VER ;
 int __ov965x_set_power (struct ov965x*,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov965x_read (struct ov965x*,int ,int *) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*,scalar_t__,int) ;
 int v4l2_info (struct v4l2_subdev*,char*,scalar_t__) ;

__attribute__((used)) static int ov965x_detect_sensor(struct v4l2_subdev *sd)
{
 struct ov965x *ov965x = to_ov965x(sd);
 u8 pid, ver;
 int ret;

 mutex_lock(&ov965x->lock);
 ret = __ov965x_set_power(ov965x, 1);
 if (ret)
  goto out;

 msleep(25);


 ret = ov965x_read(ov965x, REG_PID, &pid);
 if (!ret)
  ret = ov965x_read(ov965x, REG_VER, &ver);

 __ov965x_set_power(ov965x, 0);

 if (!ret) {
  ov965x->id = OV965X_ID(pid, ver);
  if (ov965x->id == OV9650_ID || ov965x->id == OV9652_ID) {
   v4l2_info(sd, "Found OV%04X sensor\n", ov965x->id);
  } else {
   v4l2_err(sd, "Sensor detection failed (%04X, %d)\n",
     ov965x->id, ret);
   ret = -ENODEV;
  }
 }
out:
 mutex_unlock(&ov965x->lock);

 return ret;
}
