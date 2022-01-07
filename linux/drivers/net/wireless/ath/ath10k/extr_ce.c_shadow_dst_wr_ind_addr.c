
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ce_pipe {int id; } ;
struct ath10k {int dummy; } ;


 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static inline u32 shadow_dst_wr_ind_addr(struct ath10k *ar,
      struct ath10k_ce_pipe *ce_state)
{
 u32 ce_id = ce_state->id;
 u32 addr = 0;

 switch (ce_id) {
 case 1:
  addr = 0x00032034;
  break;
 case 2:
  addr = 0x00032038;
  break;
 case 5:
  addr = 0x00032044;
  break;
 case 7:
  addr = 0x0003204C;
  break;
 case 8:
  addr = 0x00032050;
  break;
 case 9:
  addr = 0x00032054;
  break;
 case 10:
  addr = 0x00032058;
  break;
 case 11:
  addr = 0x0003205C;
  break;
 default:
  ath10k_warn(ar, "invalid CE id: %d", ce_id);
  break;
 }

 return addr;
}
