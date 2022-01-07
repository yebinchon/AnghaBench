
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int latch_event_flags; int * latch_events; struct i40e_hw hw; } ;


 int BIT (int) ;
 int I40E_PRTTSYN_STAT_1 ;
 int jiffies ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static u32 i40e_ptp_get_rx_events(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 prttsyn_stat, new_latch_events;
 int i;

 prttsyn_stat = rd32(hw, I40E_PRTTSYN_STAT_1);
 new_latch_events = prttsyn_stat & ~pf->latch_event_flags;
 for (i = 0; i < 4; i++) {
  if (new_latch_events & BIT(i))
   pf->latch_events[i] = jiffies;
 }


 pf->latch_event_flags = prttsyn_stat;

 return prttsyn_stat;
}
