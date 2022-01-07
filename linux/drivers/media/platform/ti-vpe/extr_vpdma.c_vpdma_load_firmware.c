
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_data {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 scalar_t__ VPDMA_FIRMWARE ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 int request_firmware_nowait (int ,int,char const*,struct device*,int ,struct vpdma_data*,int ) ;
 int vpdma_firmware_cb ;

__attribute__((used)) static int vpdma_load_firmware(struct vpdma_data *vpdma)
{
 int r;
 struct device *dev = &vpdma->pdev->dev;

 r = request_firmware_nowait(THIS_MODULE, 1,
  (const char *) VPDMA_FIRMWARE, dev, GFP_KERNEL, vpdma,
  vpdma_firmware_cb);
 if (r) {
  dev_err(dev, "firmware not available %s\n", VPDMA_FIRMWARE);
  return r;
 } else {
  dev_info(dev, "loading firmware %s\n", VPDMA_FIRMWARE);
 }

 return 0;
}
