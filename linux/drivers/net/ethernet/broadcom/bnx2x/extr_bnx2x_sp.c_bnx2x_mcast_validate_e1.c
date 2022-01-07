
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_mcast_ramrod_params {int mcast_list_len; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {int (* get_registry_size ) (struct bnx2x_mcast_obj*) ;scalar_t__ max_cmd_len; int total_pending_num; int (* set_registry_size ) (struct bnx2x_mcast_obj*,scalar_t__) ;} ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int BNX2X_ERR (char*,...) ;




 int BNX2X_MCAST_CMD_SET ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__,...) ;
 int EINVAL ;
 int stub1 (struct bnx2x_mcast_obj*) ;
 int stub2 (struct bnx2x_mcast_obj*,scalar_t__) ;
 int stub3 (struct bnx2x_mcast_obj*,scalar_t__) ;

__attribute__((used)) static int bnx2x_mcast_validate_e1(struct bnx2x *bp,
       struct bnx2x_mcast_ramrod_params *p,
       enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 int reg_sz = o->get_registry_size(o);

 if (cmd == BNX2X_MCAST_CMD_SET) {
  BNX2X_ERR("Can't use `set' command on e1!\n");
  return -EINVAL;
 }

 switch (cmd) {

 case 129:
  o->set_registry_size(o, 0);



 case 128:
  p->mcast_list_len = reg_sz;
  DP(BNX2X_MSG_SP, "Command %d, p->mcast_list_len=%d\n",
     cmd, p->mcast_list_len);
  break;

 case 131:
 case 130:




  if (p->mcast_list_len > o->max_cmd_len) {
   BNX2X_ERR("Can't configure more than %d multicast MACs on 57710\n",
      o->max_cmd_len);
   return -EINVAL;
  }




  DP(BNX2X_MSG_SP, "p->mcast_list_len=%d\n", p->mcast_list_len);
  if (p->mcast_list_len > 0)
   o->set_registry_size(o, p->mcast_list_len);

  break;

 default:
  BNX2X_ERR("Unknown command: %d\n", cmd);
  return -EINVAL;
 }




 if (p->mcast_list_len)
  o->total_pending_num += o->max_cmd_len;

 return 0;
}
