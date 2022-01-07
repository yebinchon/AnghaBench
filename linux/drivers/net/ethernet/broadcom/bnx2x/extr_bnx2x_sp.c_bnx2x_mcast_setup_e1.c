
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mac_configuration_cmd {TYPE_1__* config_table; } ;
struct bnx2x_raw_obj {int rdata_mapping; int cid; int (* clear_pending ) (struct bnx2x_raw_obj*) ;scalar_t__ rdata; } ;
struct bnx2x_mcast_ramrod_params {int ramrod_flags; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {int max_cmd_len; int total_pending_num; int (* clear_sched ) (struct bnx2x_mcast_obj*) ;int pending_cmds_head; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;
struct TYPE_2__ {int flags; } ;


 int ETH_CONNECTION_TYPE ;
 int MAC_CONFIGURATION_ENTRY_ACTION_TYPE ;
 int RAMROD_CMD_ID_ETH_SET_MAC ;
 int RAMROD_DRV_CLR_ONLY ;
 int SET_FLAG (int ,int ,int ) ;
 int T_ETH_MAC_COMMAND_INVALIDATE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int WARN_ON (int) ;
 int bnx2x_mcast_handle_current_cmd (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int,int ) ;
 int bnx2x_mcast_handle_pending_cmds_e1 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*) ;
 int bnx2x_mcast_refresh_registry_e1 (struct bnx2x*,struct bnx2x_mcast_obj*) ;
 int bnx2x_mcast_set_rdata_hdr_e1 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int memset (struct mac_configuration_cmd*,int ,int) ;
 int stub1 (struct bnx2x_mcast_obj*) ;
 int stub2 (struct bnx2x_raw_obj*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_mcast_setup_e1(struct bnx2x *bp,
    struct bnx2x_mcast_ramrod_params *p,
    enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 struct bnx2x_raw_obj *raw = &o->raw;
 struct mac_configuration_cmd *data =
  (struct mac_configuration_cmd *)(raw->rdata);
 int cnt = 0, i, rc;


 memset(data, 0, sizeof(*data));


 for (i = 0; i < o->max_cmd_len ; i++)
  SET_FLAG(data->config_table[i].flags,
    MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
    T_ETH_MAC_COMMAND_INVALIDATE);


 cnt = bnx2x_mcast_handle_pending_cmds_e1(bp, p);


 if (list_empty(&o->pending_cmds_head))
  o->clear_sched(o);


 if (!cnt)
  cnt = bnx2x_mcast_handle_current_cmd(bp, p, cmd, 0);




 o->total_pending_num -= o->max_cmd_len;



 WARN_ON(cnt > o->max_cmd_len);


 bnx2x_mcast_set_rdata_hdr_e1(bp, p, (u8)cnt);







 rc = bnx2x_mcast_refresh_registry_e1(bp, o);
 if (rc)
  return rc;




 if (test_bit(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
  raw->clear_pending(raw);
  return 0;
 } else {
  rc = bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_SET_MAC, raw->cid,
       U64_HI(raw->rdata_mapping),
       U64_LO(raw->rdata_mapping),
       ETH_CONNECTION_TYPE);
  if (rc)
   return rc;


  return 1;
 }
}
