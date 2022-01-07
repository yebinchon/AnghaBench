
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {scalar_t__ base; int flags; void* clk; } ;


 int WBSD_CARDPRESENT ;
 scalar_t__ WBSD_CSR ;
 int WBSD_DAT3_H ;
 int WBSD_EINT_CARD ;
 int WBSD_EINT_CRC ;
 int WBSD_EINT_FIFO_THRE ;
 int WBSD_EINT_TC ;
 int WBSD_EINT_TIMEOUT ;
 scalar_t__ WBSD_EIR ;
 int WBSD_FCARD_PRESENT ;
 int WBSD_FIFO_RESET ;
 int WBSD_FIGNORE_DETECT ;
 int WBSD_IDX_CLK ;
 int WBSD_IDX_SETUP ;
 int WBSD_IDX_TAAC ;
 scalar_t__ WBSD_ISR ;
 int WBSD_POWER_N ;
 int WBSD_SOFT_RESET ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 void* wbsd_read_index (struct wbsd_host*,int ) ;
 int wbsd_write_index (struct wbsd_host*,int ,int) ;

__attribute__((used)) static void wbsd_init_device(struct wbsd_host *host)
{
 u8 setup, ier;




 setup = wbsd_read_index(host, WBSD_IDX_SETUP);
 setup |= WBSD_FIFO_RESET | WBSD_SOFT_RESET;
 wbsd_write_index(host, WBSD_IDX_SETUP, setup);




 setup &= ~WBSD_DAT3_H;
 wbsd_write_index(host, WBSD_IDX_SETUP, setup);
 host->flags &= ~WBSD_FIGNORE_DETECT;




 host->clk = wbsd_read_index(host, WBSD_IDX_CLK);




 outb(WBSD_POWER_N, host->base + WBSD_CSR);




 wbsd_write_index(host, WBSD_IDX_TAAC, 0x7F);




 if (inb(host->base + WBSD_CSR) & WBSD_CARDPRESENT)
  host->flags |= WBSD_FCARD_PRESENT;
 else
  host->flags &= ~WBSD_FCARD_PRESENT;




 ier = 0;
 ier |= WBSD_EINT_CARD;
 ier |= WBSD_EINT_FIFO_THRE;
 ier |= WBSD_EINT_CRC;
 ier |= WBSD_EINT_TIMEOUT;
 ier |= WBSD_EINT_TC;

 outb(ier, host->base + WBSD_EIR);




 inb(host->base + WBSD_ISR);
}
