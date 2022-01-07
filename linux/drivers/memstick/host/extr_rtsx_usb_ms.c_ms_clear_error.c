
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_usb_ms {struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;


 int CARD_STOP ;
 int MS_CLR_ERR ;
 int MS_STOP ;
 int rtsx_usb_clear_dma_err (struct rtsx_ucr*) ;
 int rtsx_usb_clear_fsm_err (struct rtsx_ucr*) ;
 int rtsx_usb_ep0_write_register (struct rtsx_ucr*,int ,int,int) ;

__attribute__((used)) static inline void ms_clear_error(struct rtsx_usb_ms *host)
{
 struct rtsx_ucr *ucr = host->ucr;
 rtsx_usb_ep0_write_register(ucr, CARD_STOP,
      MS_STOP | MS_CLR_ERR,
      MS_STOP | MS_CLR_ERR);

 rtsx_usb_clear_dma_err(ucr);
 rtsx_usb_clear_fsm_err(ucr);
}
