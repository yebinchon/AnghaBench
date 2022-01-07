
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {int priv_mem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ET8EK8_PRIV_MEM_SIZE ;
 struct v4l2_subdev* i2c_get_clientdata (int ) ;
 int memcpy (char*,int ,int ) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t
et8ek8_priv_mem_read(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(to_i2c_client(dev));
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);





 memcpy(buf, sensor->priv_mem, ET8EK8_PRIV_MEM_SIZE);

 return ET8EK8_PRIV_MEM_SIZE;
}
