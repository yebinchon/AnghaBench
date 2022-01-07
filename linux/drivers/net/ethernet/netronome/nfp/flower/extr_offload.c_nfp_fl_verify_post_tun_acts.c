
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_push_vlan {int dummy; } ;
struct nfp_fl_act_head {scalar_t__ jump_id; unsigned int len_lw; } ;


 int EOPNOTSUPP ;
 scalar_t__ NFP_FL_ACTION_OPCODE_OUTPUT ;
 scalar_t__ NFP_FL_ACTION_OPCODE_PUSH_VLAN ;
 unsigned int NFP_FL_LW_SIZ ;

__attribute__((used)) static int
nfp_fl_verify_post_tun_acts(char *acts, int len, struct nfp_fl_push_vlan **vlan)
{
 struct nfp_fl_act_head *a;
 unsigned int act_off = 0;

 while (act_off < len) {
  a = (struct nfp_fl_act_head *)&acts[act_off];

  if (a->jump_id == NFP_FL_ACTION_OPCODE_PUSH_VLAN && !act_off)
   *vlan = (struct nfp_fl_push_vlan *)a;
  else if (a->jump_id != NFP_FL_ACTION_OPCODE_OUTPUT)
   return -EOPNOTSUPP;

  act_off += a->len_lw << NFP_FL_LW_SIZ;
 }


 if (*vlan && act_off <= sizeof(struct nfp_fl_push_vlan))
  return -EOPNOTSUPP;

 return 0;
}
