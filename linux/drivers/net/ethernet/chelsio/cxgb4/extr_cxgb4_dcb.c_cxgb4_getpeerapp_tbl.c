
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
struct port_info {int port_id; TYPE_1__ dcb; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int idx; int user_prio_map; int protocolid; scalar_t__ sel_field; int type; } ;
struct TYPE_7__ {TYPE_2__ app_priority; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct dcb_app {scalar_t__ priority; int protocol; scalar_t__ selector; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 int CXGB4_MAX_DCBX_APP_SUPPORTED ;
 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_APP_ID ;
 int INIT_PORT_DCB_READ_PEER_CMD (struct fw_port_cmd,int ) ;
 int be16_to_cpu (int ) ;
 int cxgb4_dcb_state_synced (int ) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ ffs (int ) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static int cxgb4_getpeerapp_tbl(struct net_device *dev, struct dcb_app *table)
{
 struct fw_port_cmd pcmd;
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 int i, err = 0;

 if (!cxgb4_dcb_state_synced(pi->dcb.state))
  return 1;

 for (i = 0; i < CXGB4_MAX_DCBX_APP_SUPPORTED; i++) {
  INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);
  pcmd.u.dcb.app_priority.type = FW_PORT_DCB_TYPE_APP_ID;
  pcmd.u.dcb.app_priority.idx = i;
  err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);

  if (err != FW_PORT_DCB_CFG_SUCCESS) {
   dev_err(adap->pdev_dev, "DCB app table read failed with %d\n",
    -err);
   return err;
  }


  if (!pcmd.u.dcb.app_priority.protocolid)
   break;

  table[i].selector = (pcmd.u.dcb.app_priority.sel_field + 1);
  table[i].protocol =
   be16_to_cpu(pcmd.u.dcb.app_priority.protocolid);
  table[i].priority =
   ffs(pcmd.u.dcb.app_priority.user_prio_map) - 1;
 }
 return err;
}
