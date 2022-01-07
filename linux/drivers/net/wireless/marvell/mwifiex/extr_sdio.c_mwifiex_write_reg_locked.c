
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdio_func {int dummy; } ;


 int sdio_writeb (struct sdio_func*,int ,int ,int*) ;

__attribute__((used)) static int
mwifiex_write_reg_locked(struct sdio_func *func, u32 reg, u8 data)
{
 int ret = -1;

 sdio_writeb(func, data, reg, &ret);
 return ret;
}
