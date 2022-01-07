
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct port_info {int port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int * pgrate; int type; } ;
struct TYPE_5__ {TYPE_1__ pgrate; } ;
struct TYPE_6__ {TYPE_2__ dcb; } ;
struct fw_port_cmd {TYPE_3__ u; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_PGRATE ;
 int INIT_PORT_DCB_READ_LOCAL_CMD (struct fw_port_cmd,int ) ;
 int INIT_PORT_DCB_READ_PEER_CMD (struct fw_port_cmd,int ) ;
 int dev_err (int ,char*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static void cxgb4_getpgbwgcfg(struct net_device *dev, int pgid, u8 *bw_per,
         int local)
{
 struct fw_port_cmd pcmd;
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 int err;

 if (local)
  INIT_PORT_DCB_READ_LOCAL_CMD(pcmd, pi->port_id);
 else
  INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);

 pcmd.u.dcb.pgrate.type = FW_PORT_DCB_TYPE_PGRATE;
 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB read PGRATE failed with %d\n",
   -err);
  return;
 }

 *bw_per = pcmd.u.dcb.pgrate.pgrate[pgid];
}
