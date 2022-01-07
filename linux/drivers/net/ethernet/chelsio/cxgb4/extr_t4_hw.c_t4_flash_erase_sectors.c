
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sf_nsec; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 int EINVAL ;
 int SF_ERASE_SECTOR ;
 int SF_OP_A ;
 int SF_WR_ENABLE ;
 int dev_err (int ,char*,int,int) ;
 int flash_wait_op (struct adapter*,int,int) ;
 int sf1_write (struct adapter*,int,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int t4_flash_erase_sectors(struct adapter *adapter, int start, int end)
{
 int ret = 0;

 if (end >= adapter->params.sf_nsec)
  return -EINVAL;

 while (start <= end) {
  if ((ret = sf1_write(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
      (ret = sf1_write(adapter, 4, 0, 1,
         SF_ERASE_SECTOR | (start << 8))) != 0 ||
      (ret = flash_wait_op(adapter, 14, 500)) != 0) {
   dev_err(adapter->pdev_dev,
    "erase of flash sector %d failed, error %d\n",
    start, ret);
   break;
  }
  start++;
 }
 t4_write_reg(adapter, SF_OP_A, 0);
 return ret;
}
