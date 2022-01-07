
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct i40e_pf {int hw; } ;


 int I40E_PRTQF_FD_INSET (int ,int) ;
 int i40e_read_rx_ctl (int *,int ) ;

__attribute__((used)) static inline u64 i40e_read_fd_input_set(struct i40e_pf *pf, u16 addr)
{
 u64 val;

 val = i40e_read_rx_ctl(&pf->hw, I40E_PRTQF_FD_INSET(addr, 1));
 val <<= 32;
 val += i40e_read_rx_ctl(&pf->hw, I40E_PRTQF_FD_INSET(addr, 0));

 return val;
}
