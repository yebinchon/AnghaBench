
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_mcast_ramrod_params {int mcast_list_len; } ;
struct bnx2x_mcast_obj {int (* set_one_rule ) (struct bnx2x*,struct bnx2x_mcast_obj*,int,int *,int ) ;} ;
struct bnx2x {int dummy; } ;


 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,int) ;
 int stub1 (struct bnx2x*,struct bnx2x_mcast_obj*,int,int *,int ) ;

__attribute__((used)) static inline void bnx2x_mcast_hdl_del(struct bnx2x *bp,
 struct bnx2x_mcast_obj *o, struct bnx2x_mcast_ramrod_params *p,
 int *line_idx)
{
 int cnt = *line_idx, i;

 for (i = 0; i < p->mcast_list_len; i++) {
  o->set_one_rule(bp, o, cnt, ((void*)0), BNX2X_MCAST_CMD_DEL);

  cnt++;

  DP(BNX2X_MSG_SP, "Deleting MAC. %d left\n",
     p->mcast_list_len - i - 1);
 }

 *line_idx = cnt;
}
