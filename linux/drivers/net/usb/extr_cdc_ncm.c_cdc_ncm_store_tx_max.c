
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int rx_max; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long cdc_ncm_check_tx_max (struct usbnet*,unsigned long) ;
 int cdc_ncm_update_rxtx_max (struct usbnet*,int ,unsigned long) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct usbnet* netdev_priv (int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t cdc_ncm_store_tx_max(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 unsigned long val;

 if (kstrtoul(buf, 0, &val) || cdc_ncm_check_tx_max(dev, val) != val)
  return -EINVAL;

 cdc_ncm_update_rxtx_max(dev, ctx->rx_max, val);
 return len;
}
