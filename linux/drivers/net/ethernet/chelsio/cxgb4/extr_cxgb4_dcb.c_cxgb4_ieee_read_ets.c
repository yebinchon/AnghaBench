
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct port_dcb_info {int msgs; int pg_num_tcs_supported; } ;
struct port_info {int port_id; struct adapter* adapter; struct port_dcb_info dcb; } ;
struct net_device {int dummy; } ;
struct ieee_ets {int willing; int* prio_tc; int * tc_tsa; int * tc_tx_bw; int * tc_rx_bw; int ets_cap; } ;
struct TYPE_6__ {int * tsa; int * pgrate; int type; } ;
struct TYPE_5__ {int pgid; int type; } ;
struct TYPE_7__ {TYPE_2__ pgrate; TYPE_1__ pgid; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct adapter {int pdev_dev; int mbox; } ;
typedef int pcmd ;


 int CXGB4_DCB_FW_PGID ;
 int CXGB4_DCB_FW_PGRATE ;
 int FW_PORT_DCB_CFG_SUCCESS ;
 int FW_PORT_DCB_TYPE_PGID ;
 int FW_PORT_DCB_TYPE_PGRATE ;
 int IEEE_8021QAZ_MAX_TCS ;
 int INIT_PORT_DCB_READ_LOCAL_CMD (struct fw_port_cmd,int ) ;
 int INIT_PORT_DCB_READ_PEER_CMD (struct fw_port_cmd,int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

__attribute__((used)) static int cxgb4_ieee_read_ets(struct net_device *dev, struct ieee_ets *ets,
          int local)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct port_dcb_info *dcb = &pi->dcb;
 struct adapter *adap = pi->adapter;
 uint32_t tc_info;
 struct fw_port_cmd pcmd;
 int i, bwg, err;

 if (!(dcb->msgs & (CXGB4_DCB_FW_PGID | CXGB4_DCB_FW_PGRATE)))
  return 0;

 ets->ets_cap = dcb->pg_num_tcs_supported;

 if (local) {
  ets->willing = 1;
  INIT_PORT_DCB_READ_LOCAL_CMD(pcmd, pi->port_id);
 } else {
  INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);
 }

 pcmd.u.dcb.pgid.type = FW_PORT_DCB_TYPE_PGID;
 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB read PGID failed with %d\n", -err);
  return err;
 }

 tc_info = be32_to_cpu(pcmd.u.dcb.pgid.pgid);

 if (local)
  INIT_PORT_DCB_READ_LOCAL_CMD(pcmd, pi->port_id);
 else
  INIT_PORT_DCB_READ_PEER_CMD(pcmd, pi->port_id);

 pcmd.u.dcb.pgrate.type = FW_PORT_DCB_TYPE_PGRATE;
 err = t4_wr_mbox(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
 if (err != FW_PORT_DCB_CFG_SUCCESS) {
  dev_err(adap->pdev_dev, "DCB read PGRATE failed with %d\n",
   -err);
  return err;
 }

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  bwg = (tc_info >> ((7 - i) * 4)) & 0xF;
  ets->prio_tc[i] = bwg;
  ets->tc_tx_bw[i] = pcmd.u.dcb.pgrate.pgrate[i];
  ets->tc_rx_bw[i] = ets->tc_tx_bw[i];
  ets->tc_tsa[i] = pcmd.u.dcb.pgrate.tsa[i];
 }

 return 0;
}
