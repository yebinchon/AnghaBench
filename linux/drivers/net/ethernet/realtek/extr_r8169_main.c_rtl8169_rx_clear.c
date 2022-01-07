
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* RxDescArray; int ** Rx_databuff; } ;
struct TYPE_2__ {int addr; } ;


 int DMA_FROM_DEVICE ;
 unsigned int NUM_RX_DESC ;
 int R8169_RX_BUF_SIZE ;
 int __free_pages (int *,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int get_order (int ) ;
 int le64_to_cpu (int ) ;
 int rtl8169_make_unusable_by_asic (TYPE_1__*) ;
 int tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_rx_clear(struct rtl8169_private *tp)
{
 unsigned int i;

 for (i = 0; i < NUM_RX_DESC && tp->Rx_databuff[i]; i++) {
  dma_unmap_page(tp_to_dev(tp),
          le64_to_cpu(tp->RxDescArray[i].addr),
          R8169_RX_BUF_SIZE, DMA_FROM_DEVICE);
  __free_pages(tp->Rx_databuff[i], get_order(R8169_RX_BUF_SIZE));
  tp->Rx_databuff[i] = ((void*)0);
  rtl8169_make_unusable_by_asic(tp->RxDescArray + i);
 }
}
