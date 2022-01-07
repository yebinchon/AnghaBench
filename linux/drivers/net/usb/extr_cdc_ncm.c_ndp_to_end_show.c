
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int drvflags; } ;
typedef int ssize_t ;


 int CDC_NCM_FLAG_NDP_TO_END ;
 struct usbnet* netdev_priv (int ) ;
 int sprintf (char*,char*,char) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t ndp_to_end_show(struct device *d, struct device_attribute *attr, char *buf)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

 return sprintf(buf, "%c\n", ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END ? 'Y' : 'N');
}
