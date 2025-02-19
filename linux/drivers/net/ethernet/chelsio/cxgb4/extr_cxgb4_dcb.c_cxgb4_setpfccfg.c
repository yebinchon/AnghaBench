
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ state; int pfcen; } ;
struct port_info {TYPE_1__ dcb; int port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int pfcen; int type; } ;
struct TYPE_7__ {TYPE_2__ pfc; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; int op_to_portid; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 scalar_t__ CXGB4_DCB_STATE_HOST ;
 int CXGB4_MAX_PRIORITY ;
 int FW_PORT_CMD_APPLY_F ;
 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_PFC ;
 int INIT_PORT_DCB_WRITE_CMD (struct fw_port_cmd,int ) ;
 int cpu_to_be32 (int ) ;
 int cxgb4_dcb_state_synced (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static void cxgb4_setpfccfg(struct net_device *dev, int priority, u8 pfccfg)
{
 struct fw_port_cmd pcmd;
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 int err;

 if (!cxgb4_dcb_state_synced(pi->dcb.state) ||
     priority >= CXGB4_MAX_PRIORITY)
  return;

 INIT_PORT_DCB_WRITE_CMD(pcmd, pi->port_id);
 if (pi->dcb.state == CXGB4_DCB_STATE_HOST)
  pcmd.op_to_portid |= cpu_to_be32(FW_PORT_CMD_APPLY_F);

 pcmd.u.dcb.pfc.type = FW_PORT_DCB_TYPE_PFC;
 pcmd.u.dcb.pfc.pfcen = pi->dcb.pfcen;

 if (pfccfg)
  pcmd.u.dcb.pfc.pfcen |= (1 << (7 - priority));
 else
  pcmd.u.dcb.pfc.pfcen &= (~(1 << (7 - priority)));

 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB PFC write failed with %d\n", -err);
  return;
 }

 pi->dcb.pfcen = pcmd.u.dcb.pfc.pfcen;
}
