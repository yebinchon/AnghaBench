
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ DMAE_REG_GO_C0 ;

u32 qed_dmae_idx_to_go_cmd(u8 idx)
{

 return DMAE_REG_GO_C0 + (idx << 2);
}
