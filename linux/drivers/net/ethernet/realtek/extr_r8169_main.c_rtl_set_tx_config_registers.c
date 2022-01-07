
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int InterFrameGap ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int TXCFG_AUTO_FIFO ;
 int TX_DMA_BURST ;
 int TxConfig ;
 int TxDMAShift ;
 int TxInterFrameGapShift ;
 scalar_t__ rtl_is_8168evl_up (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_set_tx_config_registers(struct rtl8169_private *tp)
{
 u32 val = TX_DMA_BURST << TxDMAShift |
    InterFrameGap << TxInterFrameGapShift;

 if (rtl_is_8168evl_up(tp))
  val |= TXCFG_AUTO_FIFO;

 RTL_W32(tp, TxConfig, val);
}
