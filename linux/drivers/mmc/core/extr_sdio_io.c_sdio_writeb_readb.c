
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int num; int card; } ;


 int mmc_io_rw_direct (int ,int,int ,unsigned int,int,int*) ;

u8 sdio_writeb_readb(struct sdio_func *func, u8 write_byte,
 unsigned int addr, int *err_ret)
{
 int ret;
 u8 val;

 ret = mmc_io_rw_direct(func->card, 1, func->num, addr,
   write_byte, &val);
 if (err_ret)
  *err_ret = ret;
 if (ret)
  return 0xff;

 return val;
}
