
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int dummy; } ;
typedef enum macb_bd_control { ____Placeholder_macb_bd_control } macb_bd_control ;


 int GEM_BF (int ,int) ;
 int RXBDCTRL ;
 int RXTSMODE ;
 int TXBDCTRL ;
 int TXTSMODE ;
 int gem_writel (struct macb*,int ,int ) ;

__attribute__((used)) static int gem_ptp_set_ts_mode(struct macb *bp,
          enum macb_bd_control tx_bd_control,
          enum macb_bd_control rx_bd_control)
{
 gem_writel(bp, TXBDCTRL, GEM_BF(TXTSMODE, tx_bd_control));
 gem_writel(bp, RXBDCTRL, GEM_BF(RXTSMODE, rx_bd_control));

 return 0;
}
