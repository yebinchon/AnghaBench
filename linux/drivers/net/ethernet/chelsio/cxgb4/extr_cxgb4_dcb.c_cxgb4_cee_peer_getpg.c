
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct port_info {int port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int num_tcs_supported; int * pgrate; int type; } ;
struct TYPE_5__ {int pgid; int type; } ;
struct TYPE_7__ {TYPE_2__ pgrate; TYPE_1__ pgid; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct cee_pg {int willing; int* prio_pg; int tcs_supported; int * pg_bw; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 int CXGB4_MAX_PRIORITY ;
 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_PGID ;
 int FW_PORT_DCB_TYPE_PGRATE ;
 int INIT_PORT_DCB_READ_PEER_CMD (struct fw_port_cmd,int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static int cxgb4_cee_peer_getpg(struct net_device *dev, struct cee_pg *pg)
{
 struct fw_port_cmd pcmd;
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 u32 pgid;
 int i, err;




 pg->willing = 1;

 INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);
 pcmd.u.dcb.pgid.type = FW_PORT_DCB_TYPE_PGID;
 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB read PGID failed with %d\n", -err);
  return err;
 }
 pgid = be32_to_cpu(pcmd.u.dcb.pgid.pgid);

 for (i = 0; i < CXGB4_MAX_PRIORITY; i++)
  pg->prio_pg[7 - i] = (pgid >> (i * 4)) & 0xF;

 INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);
 pcmd.u.dcb.pgrate.type = FW_PORT_DCB_TYPE_PGRATE;
 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB read PGRATE failed with %d\n",
   -err);
  return err;
 }

 for (i = 0; i < CXGB4_MAX_PRIORITY; i++)
  pg->pg_bw[i] = pcmd.u.dcb.pgrate.pgrate[i];

 pg->tcs_supported = pcmd.u.dcb.pgrate.num_tcs_supported;

 return 0;
}
