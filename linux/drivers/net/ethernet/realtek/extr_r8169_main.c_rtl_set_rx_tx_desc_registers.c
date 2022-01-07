
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtl8169_private {scalar_t__ RxPhyAddr; scalar_t__ TxPhyAddr; } ;


 int DMA_BIT_MASK (int) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int RxDescAddrHigh ;
 int RxDescAddrLow ;
 int TxDescStartAddrHigh ;
 int TxDescStartAddrLow ;

__attribute__((used)) static void rtl_set_rx_tx_desc_registers(struct rtl8169_private *tp)
{





 RTL_W32(tp, TxDescStartAddrHigh, ((u64) tp->TxPhyAddr) >> 32);
 RTL_W32(tp, TxDescStartAddrLow, ((u64) tp->TxPhyAddr) & DMA_BIT_MASK(32));
 RTL_W32(tp, RxDescAddrHigh, ((u64) tp->RxPhyAddr) >> 32);
 RTL_W32(tp, RxDescAddrLow, ((u64) tp->RxPhyAddr) & DMA_BIT_MASK(32));
}
