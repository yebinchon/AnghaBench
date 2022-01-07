
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hbm_version {int major_version; int minor_version; } ;
struct mei_device {int device_lock; struct hbm_version version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mei_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t hbm_ver_show(struct device *device,
       struct device_attribute *attr, char *buf)
{
 struct mei_device *dev = dev_get_drvdata(device);
 struct hbm_version ver;

 mutex_lock(&dev->device_lock);
 ver = dev->version;
 mutex_unlock(&dev->device_lock);

 return sprintf(buf, "%u.%u\n", ver.major_version, ver.minor_version);
}
