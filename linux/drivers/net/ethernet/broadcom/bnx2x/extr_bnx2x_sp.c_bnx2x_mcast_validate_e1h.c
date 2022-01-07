
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_mcast_ramrod_params {int mcast_list_len; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_MCAST_CMD_RESTORE ;
 int BNX2X_MCAST_CMD_SET ;
 int EINVAL ;

__attribute__((used)) static int bnx2x_mcast_validate_e1h(struct bnx2x *bp,
        struct bnx2x_mcast_ramrod_params *p,
        enum bnx2x_mcast_cmd cmd)
{
 if (cmd == BNX2X_MCAST_CMD_SET) {
  BNX2X_ERR("Can't use `set' command on e1h!\n");
  return -EINVAL;
 }


 if ((cmd == BNX2X_MCAST_CMD_DEL) || (cmd == BNX2X_MCAST_CMD_RESTORE))
  p->mcast_list_len = 1;

 return 0;
}
