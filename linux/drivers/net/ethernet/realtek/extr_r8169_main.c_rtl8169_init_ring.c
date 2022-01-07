
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int Rx_databuff; int tx_skb; } ;


 int memset (int ,int ,int) ;
 int rtl8169_init_ring_indexes (struct rtl8169_private*) ;
 int rtl8169_rx_fill (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_init_ring(struct rtl8169_private *tp)
{
 rtl8169_init_ring_indexes(tp);

 memset(tp->tx_skb, 0, sizeof(tp->tx_skb));
 memset(tp->Rx_databuff, 0, sizeof(tp->Rx_databuff));

 return rtl8169_rx_fill(tp);
}
