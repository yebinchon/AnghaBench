
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int MLXSW_AFA_VIRFWD_CODE ;
 int MLXSW_AFA_VIRFWD_FID_CMD_SET ;
 int MLXSW_AFA_VIRFWD_SIZE ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (char*) ;
 char* mlxsw_afa_block_append_action (struct mlxsw_afa_block*,int ,int ) ;
 int mlxsw_afa_virfwd_pack (char*,int ,int ) ;

int mlxsw_afa_block_append_fid_set(struct mlxsw_afa_block *block, u16 fid,
       struct netlink_ext_ack *extack)
{
 char *act = mlxsw_afa_block_append_action(block,
        MLXSW_AFA_VIRFWD_CODE,
        MLXSW_AFA_VIRFWD_SIZE);
 if (IS_ERR(act)) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot append fid_set action");
  return PTR_ERR(act);
 }
 mlxsw_afa_virfwd_pack(act, MLXSW_AFA_VIRFWD_FID_CMD_SET, fid);
 return 0;
}
