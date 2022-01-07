
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;
union REG_DCTL {void* reg; TYPE_1__ bits; } ;
struct fjes_hw {int dummy; } ;


 int EIO ;
 int FJES_DEVICE_RESET_TIMEOUT ;
 int XSCT_DCTL ;
 int msleep (int) ;
 void* rd32 (int ) ;
 int wr32 (int ,void*) ;

int fjes_hw_reset(struct fjes_hw *hw)
{
 union REG_DCTL dctl;
 int timeout;

 dctl.reg = 0;
 dctl.bits.reset = 1;
 wr32(XSCT_DCTL, dctl.reg);

 timeout = FJES_DEVICE_RESET_TIMEOUT * 1000;
 dctl.reg = rd32(XSCT_DCTL);
 while ((dctl.bits.reset == 1) && (timeout > 0)) {
  msleep(1000);
  dctl.reg = rd32(XSCT_DCTL);
  timeout -= 1000;
 }

 return timeout > 0 ? 0 : -EIO;
}
