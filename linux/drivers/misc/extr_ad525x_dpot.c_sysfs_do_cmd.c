
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpot_data {int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct dpot_data* dev_get_drvdata (struct device*) ;
 int dpot_write (struct dpot_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t sysfs_do_cmd(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count, u32 reg)
{
 struct dpot_data *data = dev_get_drvdata(dev);

 mutex_lock(&data->update_lock);
 dpot_write(data, reg, 0);
 mutex_unlock(&data->update_lock);

 return count;
}
