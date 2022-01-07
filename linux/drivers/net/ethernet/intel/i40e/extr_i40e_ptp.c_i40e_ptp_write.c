
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_PRTTSYN_TIME_H ;
 int I40E_PRTTSYN_TIME_L ;
 int timespec64_to_ns (struct timespec64 const*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_ptp_write(struct i40e_pf *pf, const struct timespec64 *ts)
{
 struct i40e_hw *hw = &pf->hw;
 u64 ns = timespec64_to_ns(ts);




 wr32(hw, I40E_PRTTSYN_TIME_L, ns & 0xFFFFFFFF);
 wr32(hw, I40E_PRTTSYN_TIME_H, ns >> 32);
}
