
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ RxDescArray; struct page** Rx_databuff; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 unsigned int NUM_RX_DESC ;
 struct page* rtl8169_alloc_rx_data (struct rtl8169_private*,scalar_t__) ;
 int rtl8169_make_unusable_by_asic (scalar_t__) ;
 int rtl8169_mark_as_last_descriptor (scalar_t__) ;
 int rtl8169_rx_clear (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_rx_fill(struct rtl8169_private *tp)
{
 unsigned int i;

 for (i = 0; i < NUM_RX_DESC; i++) {
  struct page *data;

  data = rtl8169_alloc_rx_data(tp, tp->RxDescArray + i);
  if (!data) {
   rtl8169_make_unusable_by_asic(tp->RxDescArray + i);
   goto err_out;
  }
  tp->Rx_databuff[i] = data;
 }

 rtl8169_mark_as_last_descriptor(tp->RxDescArray + NUM_RX_DESC - 1);
 return 0;

err_out:
 rtl8169_rx_clear(tp);
 return -ENOMEM;
}
