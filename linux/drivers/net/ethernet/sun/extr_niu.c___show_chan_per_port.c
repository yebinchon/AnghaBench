
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dev; } ;
struct niu_parent {int num_ports; int * txchan_per_port; int * rxchan_per_port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct niu_parent* dev_get_platdata (int *) ;
 int sprintf (char*,char*,...) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t __show_chan_per_port(struct device *dev,
        struct device_attribute *attr, char *buf,
        int rx)
{
 struct platform_device *plat_dev = to_platform_device(dev);
 struct niu_parent *p = dev_get_platdata(&plat_dev->dev);
 char *orig_buf = buf;
 u8 *arr;
 int i;

 arr = (rx ? p->rxchan_per_port : p->txchan_per_port);

 for (i = 0; i < p->num_ports; i++) {
  buf += sprintf(buf,
          (i == 0) ? "%d" : " %d",
          arr[i]);
 }
 buf += sprintf(buf, "\n");

 return buf - orig_buf;
}
