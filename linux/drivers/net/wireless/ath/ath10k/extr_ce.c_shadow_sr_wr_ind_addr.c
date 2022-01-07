
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ce_pipe {int id; } ;
struct ath10k {int dummy; } ;


 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static inline u32 shadow_sr_wr_ind_addr(struct ath10k *ar,
     struct ath10k_ce_pipe *ce_state)
{
 u32 ce_id = ce_state->id;
 u32 addr = 0;

 switch (ce_id) {
 case 0:
  addr = 0x00032000;
  break;
 case 3:
  addr = 0x0003200C;
  break;
 case 4:
  addr = 0x00032010;
  break;
 case 5:
  addr = 0x00032014;
  break;
 case 7:
  addr = 0x0003201C;
  break;
 default:
  ath10k_warn(ar, "invalid CE id: %d", ce_id);
  break;
 }
 return addr;
}
