
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_26__ {int msg; } ;
struct TYPE_25__ {int fc_tx; int fc_rx; int autoneg; } ;
struct TYPE_23__ {size_t sqs_id; scalar_t__ nicvf; } ;
struct TYPE_22__ {int qs_count; } ;
struct TYPE_21__ {int link_up; int mac_type; int speed; int duplex; } ;
struct TYPE_20__ {int ind_tbl_size; } ;
struct TYPE_18__ {int vf_id; int tns_mode; int loopback_supported; int sqs_mode; int mac_addr; int node_id; } ;
union nic_mbx {TYPE_9__ msg; TYPE_8__ pfc; TYPE_6__ nicvf; TYPE_5__ sqs_alloc; TYPE_4__ link_status; int bgx_stats; TYPE_3__ rss_size; TYPE_1__ nic_cfg; } ;
typedef int u64 ;
struct TYPE_24__ {int fc_tx; int fc_rx; int autoneg; } ;
struct TYPE_19__ {int rss_size; } ;
struct nicvf {int pf_acked; int vf_id; int tns_mode; int link_up; int pf_nacked; TYPE_10__* netdev; TYPE_7__ pfc; struct nicvf* pnicvf; struct nicvf** snicvf; int sqs_count; int duplex; int speed; int mac_type; TYPE_2__ rss_info; int loopback_supported; int sqs_mode; int set_mac_pending; int node; } ;
struct TYPE_17__ {int dev_addr; } ;


 int DUPLEX_FULL ;
 int NICVF_INTR_MBOX ;
 int NIC_PF_VF_MAILBOX_SIZE ;
 int NIC_VF_PF_MAILBOX_0_1 ;
 int ether_addr_copy (int ,int ) ;
 int netdev_dbg (TYPE_10__*,char*,int) ;
 int netdev_err (TYPE_10__*,char*,int) ;
 int netdev_info (TYPE_10__*,char*,...) ;
 int netif_carrier_off (TYPE_10__*) ;
 int netif_carrier_on (TYPE_10__*) ;
 int netif_tx_start_all_queues (TYPE_10__*) ;
 int netif_tx_stop_all_queues (TYPE_10__*) ;
 int nicvf_clear_intr (struct nicvf*,int ,int ) ;
 int nicvf_read_bgx_stats (struct nicvf*,int *) ;
 int nicvf_reg_read (struct nicvf*,int) ;

__attribute__((used)) static void nicvf_handle_mbx_intr(struct nicvf *nic)
{
 union nic_mbx mbx = {};
 u64 *mbx_data;
 u64 mbx_addr;
 int i;

 mbx_addr = NIC_VF_PF_MAILBOX_0_1;
 mbx_data = (u64 *)&mbx;

 for (i = 0; i < NIC_PF_VF_MAILBOX_SIZE; i++) {
  *mbx_data = nicvf_reg_read(nic, mbx_addr);
  mbx_data++;
  mbx_addr += sizeof(u64);
 }

 netdev_dbg(nic->netdev, "Mbox message: msg: 0x%x\n", mbx.msg.msg);
 switch (mbx.msg.msg) {
 case 130:
  nic->pf_acked = 1;
  nic->vf_id = mbx.nic_cfg.vf_id & 0x7F;
  nic->tns_mode = mbx.nic_cfg.tns_mode & 0x7F;
  nic->node = mbx.nic_cfg.node_id;
  if (!nic->set_mac_pending)
   ether_addr_copy(nic->netdev->dev_addr,
     mbx.nic_cfg.mac_addr);
  nic->sqs_mode = mbx.nic_cfg.sqs_mode;
  nic->loopback_supported = mbx.nic_cfg.loopback_supported;
  nic->link_up = 0;
  nic->duplex = 0;
  nic->speed = 0;
  break;
 case 137:
  nic->pf_acked = 1;
  break;
 case 133:
  nic->pf_nacked = 1;
  break;
 case 129:
  nic->rss_info.rss_size = mbx.rss_size.ind_tbl_size;
  nic->pf_acked = 1;
  break;
 case 134:
  nicvf_read_bgx_stats(nic, &mbx.bgx_stats);
  nic->pf_acked = 1;
  break;
 case 135:
  nic->pf_acked = 1;
  if (nic->link_up != mbx.link_status.link_up) {
   nic->link_up = mbx.link_status.link_up;
   nic->duplex = mbx.link_status.duplex;
   nic->speed = mbx.link_status.speed;
   nic->mac_type = mbx.link_status.mac_type;
   if (nic->link_up) {
    netdev_info(nic->netdev,
         "Link is Up %d Mbps %s duplex\n",
         nic->speed,
         nic->duplex == DUPLEX_FULL ?
         "Full" : "Half");
    netif_carrier_on(nic->netdev);
    netif_tx_start_all_queues(nic->netdev);
   } else {
    netdev_info(nic->netdev, "Link is Down\n");
    netif_carrier_off(nic->netdev);
    netif_tx_stop_all_queues(nic->netdev);
   }
  }
  break;
 case 136:
  nic->sqs_count = mbx.sqs_alloc.qs_count;
  nic->pf_acked = 1;
  break;
 case 128:



  nic->snicvf[mbx.nicvf.sqs_id] =
   (struct nicvf *)mbx.nicvf.nicvf;
  nic->pf_acked = 1;
  break;
 case 131:




  nic->pnicvf = (struct nicvf *)mbx.nicvf.nicvf;
  nic->pf_acked = 1;
  break;
 case 132:
  nic->pfc.autoneg = mbx.pfc.autoneg;
  nic->pfc.fc_rx = mbx.pfc.fc_rx;
  nic->pfc.fc_tx = mbx.pfc.fc_tx;
  nic->pf_acked = 1;
  break;
 default:
  netdev_err(nic->netdev,
      "Invalid message from PF, msg 0x%x\n", mbx.msg.msg);
  break;
 }
 nicvf_clear_intr(nic, NICVF_INTR_MBOX, 0);
}
