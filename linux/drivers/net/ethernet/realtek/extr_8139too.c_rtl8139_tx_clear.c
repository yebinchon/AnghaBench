
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;



__attribute__((used)) static inline void rtl8139_tx_clear (struct rtl8139_private *tp)
{
 tp->cur_tx = 0;
 tp->dirty_tx = 0;


}
