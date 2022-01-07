
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ cur_rx; scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;



__attribute__((used)) static void rtl8169_init_ring_indexes(struct rtl8169_private *tp)
{
 tp->dirty_tx = tp->cur_tx = tp->cur_rx = 0;
}
