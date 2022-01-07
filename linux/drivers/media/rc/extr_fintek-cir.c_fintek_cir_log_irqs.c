
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CIR_STATUS_IRQ_EN ;
 int CIR_STATUS_RX_RECEIVE ;
 int CIR_STATUS_RX_TIMEOUT ;
 int CIR_STATUS_TX_FINISH ;
 int CIR_STATUS_TX_UNDERRUN ;
 int KERN_INFO ;
 int fit_pr (int ,char*,int,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void fintek_cir_log_irqs(u8 status)
{
 fit_pr(KERN_INFO, "IRQ 0x%02x:%s%s%s%s%s", status,
  status & CIR_STATUS_IRQ_EN ? " IRQEN" : "",
  status & CIR_STATUS_TX_FINISH ? " TXF" : "",
  status & CIR_STATUS_TX_UNDERRUN ? " TXU" : "",
  status & CIR_STATUS_RX_TIMEOUT ? " RXTO" : "",
  status & CIR_STATUS_RX_RECEIVE ? " RXOK" : "");
}
