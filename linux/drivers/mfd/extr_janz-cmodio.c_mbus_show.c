
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmodio_device {int hex; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct cmodio_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t mbus_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct cmodio_device *priv = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%x\n", priv->hex);
}
