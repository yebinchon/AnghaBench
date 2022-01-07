
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdio_func {int dummy; } ;


 int ATH6KL_DBG_SDIO ;
 int ATH6KL_DBG_SDIO_DUMP ;
 int HIF_FIXED_ADDRESS ;
 int HIF_MBOX0_EXT_BASE_ADDR ;
 int HIF_MBOX0_EXT_WIDTH ;
 int HIF_MBOX_BASE_ADDR ;
 int HIF_MBOX_END_ADDR ;
 int HIF_MBOX_WIDTH ;
 int HIF_WRITE ;
 int ath6kl_dbg (int ,char*,char*,int,char*,int *,int) ;
 int ath6kl_dbg_dump (int ,int *,char*,int *,int) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_memcpy_fromio (struct sdio_func*,int *,int,int) ;
 int sdio_memcpy_toio (struct sdio_func*,int,int *,int) ;
 int sdio_readsb (struct sdio_func*,int *,int,int) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_writesb (struct sdio_func*,int,int *,int) ;
 int trace_ath6kl_sdio (int,int,int *,int) ;

__attribute__((used)) static int ath6kl_sdio_io(struct sdio_func *func, u32 request, u32 addr,
     u8 *buf, u32 len)
{
 int ret = 0;

 sdio_claim_host(func);

 if (request & HIF_WRITE) {

  if (addr >= HIF_MBOX_BASE_ADDR &&
      addr <= HIF_MBOX_END_ADDR)
   addr += (HIF_MBOX_WIDTH - len);


  if (addr == HIF_MBOX0_EXT_BASE_ADDR)
   addr += HIF_MBOX0_EXT_WIDTH - len;

  if (request & HIF_FIXED_ADDRESS)
   ret = sdio_writesb(func, addr, buf, len);
  else
   ret = sdio_memcpy_toio(func, addr, buf, len);
 } else {
  if (request & HIF_FIXED_ADDRESS)
   ret = sdio_readsb(func, buf, addr, len);
  else
   ret = sdio_memcpy_fromio(func, buf, addr, len);
 }

 sdio_release_host(func);

 ath6kl_dbg(ATH6KL_DBG_SDIO, "%s addr 0x%x%s buf 0x%p len %d\n",
     request & HIF_WRITE ? "wr" : "rd", addr,
     request & HIF_FIXED_ADDRESS ? " (fixed)" : "", buf, len);
 ath6kl_dbg_dump(ATH6KL_DBG_SDIO_DUMP, ((void*)0), "sdio ", buf, len);

 trace_ath6kl_sdio(addr, request, buf, len);

 return ret;
}
