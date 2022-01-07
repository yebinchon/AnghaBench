
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_mmc_card {int func; TYPE_1__* reg; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
typedef int buf ;
struct TYPE_2__ {int func1_dump_reg_start; int func1_dump_reg_end; int* func1_spec_reg_table; int func1_spec_reg_num; int func1_scratch_reg; } ;


 int MSG ;
 int MWIFIEX_SDIO_SCRATCH_SIZE ;
 int mdelay (int) ;
 int memset (char*,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pm_wakeup_card (struct mwifiex_adapter*) ;
 int sdio_claim_host (int ) ;
 int sdio_f0_readb (int ,int,int*) ;
 int sdio_readb (int ,int,int*) ;
 int sdio_release_host (int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
mwifiex_sdio_reg_dump(struct mwifiex_adapter *adapter, char *drv_buf)
{
 char *p = drv_buf;
 struct sdio_mmc_card *cardp = adapter->card;
 int ret = 0;
 u8 count, func, data, index = 0, size = 0;
 u8 reg, reg_start, reg_end;
 char buf[256], *ptr;

 if (!p)
  return 0;

 mwifiex_dbg(adapter, MSG, "SDIO register dump start\n");

 mwifiex_pm_wakeup_card(adapter);

 sdio_claim_host(cardp->func);

 for (count = 0; count < 5; count++) {
  memset(buf, 0, sizeof(buf));
  ptr = buf;

  switch (count) {
  case 0:

   func = count;
   reg_start = 0;
   reg_end = 9;
   break;
  case 1:

   func = count;
   reg_start = cardp->reg->func1_dump_reg_start;
   reg_end = cardp->reg->func1_dump_reg_end;
   break;
  case 2:
   index = 0;
   func = 1;
   reg_start = cardp->reg->func1_spec_reg_table[index++];
   size = cardp->reg->func1_spec_reg_num;
   reg_end = cardp->reg->func1_spec_reg_table[size-1];
   break;
  default:

   if (count == 4)
    mdelay(100);
   func = 1;
   reg_start = cardp->reg->func1_scratch_reg;
   reg_end = reg_start + MWIFIEX_SDIO_SCRATCH_SIZE;
  }

  if (count != 2)
   ptr += sprintf(ptr, "SDIO Func%d (%#x-%#x): ",
           func, reg_start, reg_end);
  else
   ptr += sprintf(ptr, "SDIO Func%d: ", func);

  for (reg = reg_start; reg <= reg_end;) {
   if (func == 0)
    data = sdio_f0_readb(cardp->func, reg, &ret);
   else
    data = sdio_readb(cardp->func, reg, &ret);

   if (count == 2)
    ptr += sprintf(ptr, "(%#x) ", reg);
   if (!ret) {
    ptr += sprintf(ptr, "%02x ", data);
   } else {
    ptr += sprintf(ptr, "ERR");
    break;
   }

   if (count == 2 && reg < reg_end)
    reg = cardp->reg->func1_spec_reg_table[index++];
   else
    reg++;
  }

  mwifiex_dbg(adapter, MSG, "%s\n", buf);
  p += sprintf(p, "%s\n", buf);
 }

 sdio_release_host(cardp->func);

 mwifiex_dbg(adapter, MSG, "SDIO register dump end\n");

 return p - drv_buf;
}
