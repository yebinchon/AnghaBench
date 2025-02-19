
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct smiapp_module_info {int manufacturer_id; int model_id; int revision_number_major; } ;
struct smiapp_sensor {struct smiapp_module_info minfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int PAGE_SIZE ;
 struct v4l2_subdev* i2c_get_clientdata (int ) ;
 scalar_t__ snprintf (char*,int ,char*,int,int,int ) ;
 int to_i2c_client (struct device*) ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static ssize_t
smiapp_sysfs_ident_read(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(to_i2c_client(dev));
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 struct smiapp_module_info *minfo = &sensor->minfo;

 return snprintf(buf, PAGE_SIZE, "%2.2x%4.4x%2.2x\n",
   minfo->manufacturer_id, minfo->model_id,
   minfo->revision_number_major) + 1;
}
