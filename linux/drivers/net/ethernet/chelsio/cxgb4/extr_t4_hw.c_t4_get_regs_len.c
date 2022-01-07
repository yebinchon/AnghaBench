
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 unsigned int CHELSIO_CHIP_VERSION (int ) ;



 unsigned int T4_REGMAP_SIZE ;
 unsigned int T5_REGMAP_SIZE ;
 int dev_err (int ,char*,unsigned int) ;

unsigned int t4_get_regs_len(struct adapter *adapter)
{
 unsigned int chip_version = CHELSIO_CHIP_VERSION(adapter->params.chip);

 switch (chip_version) {
 case 130:
  return T4_REGMAP_SIZE;

 case 129:
 case 128:
  return T5_REGMAP_SIZE;
 }

 dev_err(adapter->pdev_dev,
  "Unsupported chip version %d\n", chip_version);
 return 0;
}
