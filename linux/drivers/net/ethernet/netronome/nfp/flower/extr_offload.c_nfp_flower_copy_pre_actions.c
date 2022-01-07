
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_fl_act_head {unsigned int len_lw; int jump_id; } ;




 unsigned int NFP_FL_LW_SIZ ;
 int memcpy (char*,char*,unsigned int) ;

__attribute__((used)) static unsigned int
nfp_flower_copy_pre_actions(char *act_dst, char *act_src, int len,
       bool *tunnel_act)
{
 unsigned int act_off = 0, act_len;
 struct nfp_fl_act_head *a;
 u8 act_id = 0;

 while (act_off < len) {
  a = (struct nfp_fl_act_head *)&act_src[act_off];
  act_len = a->len_lw << NFP_FL_LW_SIZ;
  act_id = a->jump_id;

  switch (act_id) {
  case 128:
   if (tunnel_act)
    *tunnel_act = 1;

  case 129:
   memcpy(act_dst + act_off, act_src + act_off, act_len);
   break;
  default:
   return act_off;
  }

  act_off += act_len;
 }

 return act_off;
}
