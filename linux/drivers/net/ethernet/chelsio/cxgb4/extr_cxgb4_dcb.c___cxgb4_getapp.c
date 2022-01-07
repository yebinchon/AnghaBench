
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int state; } ;
struct port_info {int port_id; TYPE_1__ dcb; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int idx; scalar_t__ sel_field; int user_prio_map; int protocolid; int type; } ;
struct TYPE_7__ {TYPE_2__ app_priority; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 int CXGB4_MAX_DCBX_APP_SUPPORTED ;
 int EEXIST ;
 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_APP_ID ;
 int INIT_PORT_DCB_READ_LOCAL_CMD (struct fw_port_cmd,int ) ;
 int INIT_PORT_DCB_READ_PEER_CMD (struct fw_port_cmd,int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 int cxgb4_dcb_state_synced (int ) ;
 int dev_err (int ,char*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static int __cxgb4_getapp(struct net_device *dev, u8 app_idtype, u16 app_id,
     int peer)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 int i;

 if (!cxgb4_dcb_state_synced(pi->dcb.state))
  return 0;

 for (i = 0; i < CXGB4_MAX_DCBX_APP_SUPPORTED; i++) {
  struct fw_port_cmd pcmd;
  int err;

  if (peer)
   INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);
  else
   INIT_PORT_DCB_READ_LOCAL_CMD(pcmd, pi->port_id);

  pcmd.u.dcb.app_priority.type = FW_PORT_DCB_TYPE_APP_ID;
  pcmd.u.dcb.app_priority.idx = i;

  err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
  if (err != FW_PORT_DCB_CFG_SUCCESS) {
   dev_err(adap->pdev_dev, "DCB APP read failed with %d\n",
    -err);
   return err;
  }
  if (be16_to_cpu(pcmd.u.dcb.app_priority.protocolid) == app_id)
   if (pcmd.u.dcb.app_priority.sel_field == app_idtype)
    return pcmd.u.dcb.app_priority.user_prio_map;


  if (!pcmd.u.dcb.app_priority.protocolid)
   break;
 }

 return -EEXIST;
}
