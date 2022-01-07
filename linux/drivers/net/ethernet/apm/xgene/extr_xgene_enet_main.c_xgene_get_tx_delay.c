
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int tx_delay; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;

__attribute__((used)) static int xgene_get_tx_delay(struct xgene_enet_pdata *pdata)
{
 struct device *dev = &pdata->pdev->dev;
 int delay, ret;

 ret = device_property_read_u32(dev, "tx-delay", &delay);
 if (ret) {
  pdata->tx_delay = 4;
  return 0;
 }

 if (delay < 0 || delay > 7) {
  dev_err(dev, "Invalid tx-delay specified\n");
  return -EINVAL;
 }

 pdata->tx_delay = delay;

 return 0;
}
