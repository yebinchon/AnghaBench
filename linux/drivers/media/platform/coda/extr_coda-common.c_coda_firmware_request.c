
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_dev {size_t firmware; int dev; TYPE_1__* devtype; } ;
struct TYPE_2__ {char** firmware; int product; } ;


 size_t ARRAY_SIZE (char**) ;
 int EINVAL ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int coda_fw_callback ;
 int coda_product_name (int ) ;
 int dev_dbg (int ,char*,char*,int ) ;
 int request_firmware_nowait (int ,int,char*,int ,int ,struct coda_dev*,int ) ;

__attribute__((used)) static int coda_firmware_request(struct coda_dev *dev)
{
 char *fw;

 if (dev->firmware >= ARRAY_SIZE(dev->devtype->firmware))
  return -EINVAL;

 fw = dev->devtype->firmware[dev->firmware];

 dev_dbg(dev->dev, "requesting firmware '%s' for %s\n", fw,
  coda_product_name(dev->devtype->product));

 return request_firmware_nowait(THIS_MODULE, 1, fw, dev->dev,
           GFP_KERNEL, dev, coda_fw_callback);
}
