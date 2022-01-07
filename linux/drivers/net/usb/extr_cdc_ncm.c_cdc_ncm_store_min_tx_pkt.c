
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {unsigned long min_tx_pkt; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct usbnet* netdev_priv (int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t cdc_ncm_store_min_tx_pkt(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 unsigned long val;


 if (kstrtoul(buf, 0, &val))
  return -EINVAL;

 ctx->min_tx_pkt = val;
 return len;
}
