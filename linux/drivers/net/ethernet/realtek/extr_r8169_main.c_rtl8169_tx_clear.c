
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dev; scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;


 int NUM_TX_DESC ;
 int netdev_reset_queue (int ) ;
 int rtl8169_tx_clear_range (struct rtl8169_private*,scalar_t__,int ) ;

__attribute__((used)) static void rtl8169_tx_clear(struct rtl8169_private *tp)
{
 rtl8169_tx_clear_range(tp, tp->dirty_tx, NUM_TX_DESC);
 tp->cur_tx = tp->dirty_tx = 0;
 netdev_reset_queue(tp->dev);
}
