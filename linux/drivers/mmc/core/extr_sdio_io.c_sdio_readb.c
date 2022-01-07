
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int num; int card; } ;


 int EINVAL ;
 int mmc_io_rw_direct (int ,int ,int ,unsigned int,int ,int*) ;

u8 sdio_readb(struct sdio_func *func, unsigned int addr, int *err_ret)
{
 int ret;
 u8 val;

 if (!func) {
  if (err_ret)
   *err_ret = -EINVAL;
  return 0xFF;
 }

 ret = mmc_io_rw_direct(func->card, 0, func->num, addr, 0, &val);
 if (err_ret)
  *err_ret = ret;
 if (ret)
  return 0xFF;

 return val;
}
