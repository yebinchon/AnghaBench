
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct qmi_wwan_state {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int QMI_WWAN_FLAG_RAWIP ;
 struct usbnet* netdev_priv (int ) ;
 int sprintf (char*,char*,char) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t raw_ip_show(struct device *d, struct device_attribute *attr, char *buf)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct qmi_wwan_state *info = (void *)&dev->data;

 return sprintf(buf, "%c\n", info->flags & QMI_WWAN_FLAG_RAWIP ? 'Y' : 'N');
}
