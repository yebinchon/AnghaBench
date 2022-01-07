
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int drvflags; int mtx; scalar_t__ delayed_ndp16; int max_ndp_size; } ;
typedef size_t ssize_t ;


 int CDC_NCM_FLAG_NDP_TO_END ;
 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int ,int ) ;
 struct usbnet* netdev_priv (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ strtobool (char const*,int*) ;
 int to_net_dev (struct device*) ;
 int usbnet_start_xmit (int *,int ) ;

__attribute__((used)) static ssize_t ndp_to_end_store(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 bool enable;

 if (strtobool(buf, &enable))
  return -EINVAL;


 if (enable == (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END))
  return len;

 if (enable && !ctx->delayed_ndp16) {
  ctx->delayed_ndp16 = kzalloc(ctx->max_ndp_size, GFP_KERNEL);
  if (!ctx->delayed_ndp16)
   return -ENOMEM;
 }


 netif_tx_lock_bh(dev->net);
 usbnet_start_xmit(((void*)0), dev->net);
 spin_lock_bh(&ctx->mtx);
 if (enable)
  ctx->drvflags |= CDC_NCM_FLAG_NDP_TO_END;
 else
  ctx->drvflags &= ~CDC_NCM_FLAG_NDP_TO_END;
 spin_unlock_bh(&ctx->mtx);
 netif_tx_unlock_bh(dev->net);

 return len;
}
