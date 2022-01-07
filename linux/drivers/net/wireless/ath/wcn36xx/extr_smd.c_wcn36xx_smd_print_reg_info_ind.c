
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcn36xx_hal_print_reg_info_ind {int count; TYPE_1__* regs; int reason; int scenario; } ;
struct wcn36xx {int dummy; } ;
struct TYPE_2__ {int value; int addr; } ;


 int EIO ;
 int WCN36XX_DBG_HAL ;
 int wcn36xx_dbg (int ,char*,int ,int ) ;
 int wcn36xx_warn (char*) ;

__attribute__((used)) static int wcn36xx_smd_print_reg_info_ind(struct wcn36xx *wcn,
       void *buf,
       size_t len)
{
 struct wcn36xx_hal_print_reg_info_ind *rsp = buf;
 int i;

 if (len < sizeof(*rsp)) {
  wcn36xx_warn("Corrupted print reg info indication\n");
  return -EIO;
 }

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "reginfo indication, scenario: 0x%x reason: 0x%x\n",
      rsp->scenario, rsp->reason);

 for (i = 0; i < rsp->count; i++) {
  wcn36xx_dbg(WCN36XX_DBG_HAL, "\t0x%x: 0x%x\n",
       rsp->regs[i].addr, rsp->regs[i].value);
 }

 return 0;
}
