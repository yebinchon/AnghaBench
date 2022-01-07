
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdio_func {scalar_t__ tmpbuf; } ;
typedef int __le16 ;


 int le16_to_cpup (int *) ;
 int sdio_memcpy_fromio (struct sdio_func*,scalar_t__,unsigned int,int) ;

u16 sdio_readw(struct sdio_func *func, unsigned int addr, int *err_ret)
{
 int ret;

 ret = sdio_memcpy_fromio(func, func->tmpbuf, addr, 2);
 if (err_ret)
  *err_ret = ret;
 if (ret)
  return 0xFFFF;

 return le16_to_cpup((__le16 *)func->tmpbuf);
}
