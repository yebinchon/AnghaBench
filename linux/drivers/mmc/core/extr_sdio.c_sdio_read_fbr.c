
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {unsigned char class; int num; int card; } ;


 unsigned char SDIO_CLASS_NONE ;
 scalar_t__ SDIO_FBR_BASE (int ) ;
 scalar_t__ SDIO_FBR_STD_IF ;
 scalar_t__ SDIO_FBR_STD_IF_EXT ;
 scalar_t__ mmc_card_nonstd_func_interface (int ) ;
 int mmc_io_rw_direct (int ,int ,int ,scalar_t__,int ,unsigned char*) ;

__attribute__((used)) static int sdio_read_fbr(struct sdio_func *func)
{
 int ret;
 unsigned char data;

 if (mmc_card_nonstd_func_interface(func->card)) {
  func->class = SDIO_CLASS_NONE;
  return 0;
 }

 ret = mmc_io_rw_direct(func->card, 0, 0,
  SDIO_FBR_BASE(func->num) + SDIO_FBR_STD_IF, 0, &data);
 if (ret)
  goto out;

 data &= 0x0f;

 if (data == 0x0f) {
  ret = mmc_io_rw_direct(func->card, 0, 0,
   SDIO_FBR_BASE(func->num) + SDIO_FBR_STD_IF_EXT, 0, &data);
  if (ret)
   goto out;
 }

 func->class = data;

out:
 return ret;
}
