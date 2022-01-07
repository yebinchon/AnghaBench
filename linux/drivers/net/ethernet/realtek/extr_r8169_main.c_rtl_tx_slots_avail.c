
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {unsigned int dirty_tx; unsigned int cur_tx; } ;


 unsigned int NUM_TX_DESC ;

__attribute__((used)) static bool rtl_tx_slots_avail(struct rtl8169_private *tp,
          unsigned int nr_frags)
{
 unsigned int slots_avail = tp->dirty_tx + NUM_TX_DESC - tp->cur_tx;


 return slots_avail > nr_frags;
}
