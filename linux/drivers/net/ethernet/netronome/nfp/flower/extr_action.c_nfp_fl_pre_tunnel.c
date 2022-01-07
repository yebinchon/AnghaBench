
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len_lw; int jump_id; } ;
struct nfp_fl_pre_tunnel {TYPE_1__ head; } ;


 int NFP_FL_ACTION_OPCODE_PRE_TUNNEL ;
 size_t NFP_FL_LW_SIZ ;
 int memmove (char*,char*,int) ;
 int memset (struct nfp_fl_pre_tunnel*,int ,size_t) ;

__attribute__((used)) static struct nfp_fl_pre_tunnel *nfp_fl_pre_tunnel(char *act_data, int act_len)
{
 size_t act_size = sizeof(struct nfp_fl_pre_tunnel);
 struct nfp_fl_pre_tunnel *pre_tun_act;




 if (act_len)
  memmove(act_data + act_size, act_data, act_len);

 pre_tun_act = (struct nfp_fl_pre_tunnel *)act_data;

 memset(pre_tun_act, 0, act_size);

 pre_tun_act->head.jump_id = NFP_FL_ACTION_OPCODE_PRE_TUNNEL;
 pre_tun_act->head.len_lw = act_size >> NFP_FL_LW_SIZ;

 return pre_tun_act;
}
