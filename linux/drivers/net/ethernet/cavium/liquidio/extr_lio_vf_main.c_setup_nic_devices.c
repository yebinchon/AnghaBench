
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_25__ {scalar_t__ base_queue; int num_oqueues; int num_iqueues; } ;
union oct_nic_if_cfg {scalar_t__ u64; TYPE_2__ s; } ;
typedef size_t u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct octeon_soft_command {int caller_is_done; int sc_status; int complete; scalar_t__ iq_no; scalar_t__ virtdptr; scalar_t__ virtrptr; } ;
struct TYPE_17__ {int (* enable_interrupt ) (struct octeon_device*,int ) ;} ;
struct TYPE_26__ {int liquidio_firmware_version; } ;
struct TYPE_24__ {int rings_per_vf; } ;
struct octeon_device {int pf_num; size_t ifcount; scalar_t__ chip_id; int priv_flags; int no_speed_setting; TYPE_16__* pci_dev; TYPE_10__ fn_list; struct octdev_props* props; TYPE_3__ fw_info; TYPE_1__ sriov_info; } ;
struct octdev_props {struct net_device* netdev; int gmxport; } ;
struct net_device {int hw_enc_features; int vlan_features; int features; int hw_features; int dev_addr; int max_mtu; int min_mtu; int * netdev_ops; } ;
struct TYPE_30__ {int u64; } ;
struct TYPE_31__ {int macaddr_spoofchk; int macaddr_is_admin_asgnd; TYPE_7__ link; int gmxport; scalar_t__ hw_addr; TYPE_5__* txpciq; TYPE_4__* rxpciq; } ;
struct TYPE_32__ {char* liquidio_firmware_version; TYPE_8__ linfo; int oqmask; int iqmask; } ;
struct liquidio_if_cfg_resp {int status; TYPE_9__ cfg_info; } ;
struct liquidio_if_cfg_info {int dummy; } ;
struct lio_version {void* micro; void* minor; void* major; } ;
struct TYPE_29__ {int u64; } ;
struct TYPE_22__ {int num_rxpciq; int num_txpciq; TYPE_14__* rxpciq; TYPE_12__* txpciq; scalar_t__ hw_addr; int gmxport; int macaddr_spoofchk; int macaddr_is_admin_asgnd; TYPE_6__ link; } ;
struct lio {int ifidx; int dev_capability; int enc_dev_capability; int link_changes; struct octeon_device* oct_dev; int rxq; int rx_qsize; int txq; int tx_qsize; TYPE_15__ linfo; struct net_device* netdev; struct octdev_props* octprops; int msg_enable; } ;
struct TYPE_28__ {int u64; } ;
struct TYPE_27__ {int u64; } ;
struct TYPE_23__ {int dev; } ;
struct TYPE_20__ {int q_no; } ;
struct TYPE_21__ {TYPE_13__ s; int u64; } ;
struct TYPE_18__ {int q_no; } ;
struct TYPE_19__ {TYPE_11__ s; int u64; } ;


 int CVM_CAST64 (scalar_t__) ;
 int DEFAULT_MSG_ENABLE ;
 int EIO ;
 int ENODEV ;
 int ETH_ALEN ;
 struct lio* GET_LIO (struct net_device*) ;
 int IQ_SEND_FAILED ;
 int LIO_IFSTATE_DROQ_OPS ;
 int LIO_IFSTATE_REGISTERED ;
 int LIO_MAX_MTU_SIZE ;
 int LIO_MIN_MTU_SIZE ;
 int LIO_SIZE ;
 int LIQUIDIO_BASE_MAJOR_VERSION ;
 int LIQUIDIO_BASE_MICRO_VERSION ;
 int LIQUIDIO_BASE_MINOR_VERSION ;
 int NETIF_F_GRO ;
 int NETIF_F_GSO_UDP_TUNNEL ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int OCTEON_ALL_INTR ;
 scalar_t__ OCTEON_CN23XX_VF_VID ;
 int OCTEON_REQUEST_PENDING ;
 int OCTNET_CMD_LRO_ENABLE ;
 int OCTNET_CMD_RXCSUM_ENABLE ;
 int OCTNET_CMD_TNL_RX_CSUM_CTL ;
 int OCTNET_CMD_TNL_TX_CSUM_CTL ;
 int OCTNET_CMD_TXCSUM_ENABLE ;
 int OCTNIC_GSO_MAX_SIZE ;
 int OCTNIC_LROIPV4 ;
 int OCTNIC_LROIPV6 ;
 int OCT_PRIV_FLAG_DEFAULT ;
 int OPCODE_NIC ;
 int OPCODE_NIC_IF_CFG ;
 int OPCODE_NIC_INFO ;
 int REQTYPE_NORESP_NET ;
 int REQTYPE_NORESP_NET_SG ;
 int REQTYPE_RESP_NET_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int WRITE_ONCE (int ,int) ;
 struct net_device* alloc_etherdev_mq (int ,int) ;
 void* cpu_to_be16 (int ) ;
 int debug ;
 int dev_dbg (int *,char*,size_t,...) ;
 int dev_err (int *,char*,...) ;
 int ether_addr_copy (int ,size_t*) ;
 int free_netbuf ;
 int free_netsgbuf ;
 int free_netsgbuf_with_resp ;
 int hweight64 (int ) ;
 int ifstate_set (struct lio*,int ) ;
 int init_completion (int *) ;
 int lio_nic_info ;
 scalar_t__ lio_setup_glists (struct octeon_device*,struct lio*,int) ;
 int lionetdevops ;
 int liquidio_destroy_nic_device (struct octeon_device*,size_t) ;
 int liquidio_set_ethtool_ops (struct net_device*) ;
 int liquidio_set_feature (struct net_device*,int ,int) ;
 int liquidio_set_rxcsum_command (struct net_device*,int ,int ) ;
 scalar_t__ liquidio_setup_io_queues (struct octeon_device*,size_t,int,int) ;
 int memset (struct lio*,int ,int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_set_gso_max_size (struct net_device*,int ) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_get_rx_qsize (struct octeon_device*,int ) ;
 int octeon_get_tx_qsize (struct octeon_device*,int ) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,scalar_t__,int ) ;
 int octeon_register_dispatch_fn (struct octeon_device*,int ,int ,int ,struct octeon_device*) ;
 int octeon_register_reqtype_free_fn (struct octeon_device*,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_swap_8B_data (scalar_t__*,int) ;
 scalar_t__ register_netdev (struct net_device*) ;
 scalar_t__ setup_link_status_change_wq (struct net_device*) ;
 scalar_t__ setup_rx_oom_poll_fn (struct net_device*) ;
 int snprintf (int ,int,char*,char*) ;
 int stub1 (struct octeon_device*,int ) ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int ) ;

__attribute__((used)) static int setup_nic_devices(struct octeon_device *octeon_dev)
{
 int retval, num_iqueues, num_oqueues;
 u32 resp_size, data_size;
 struct liquidio_if_cfg_resp *resp;
 struct octeon_soft_command *sc;
 union oct_nic_if_cfg if_cfg;
 struct octdev_props *props;
 struct net_device *netdev;
 struct lio_version *vdata;
 struct lio *lio = ((void*)0);
 u8 mac[ETH_ALEN], i, j;
 u32 ifidx_or_pfnum;

 ifidx_or_pfnum = octeon_dev->pf_num;


 octeon_register_dispatch_fn(octeon_dev, OPCODE_NIC, OPCODE_NIC_INFO,
        lio_nic_info, octeon_dev);




 octeon_register_reqtype_free_fn(octeon_dev, REQTYPE_NORESP_NET,
     free_netbuf);

 octeon_register_reqtype_free_fn(octeon_dev, REQTYPE_NORESP_NET_SG,
     free_netsgbuf);

 octeon_register_reqtype_free_fn(octeon_dev, REQTYPE_RESP_NET_SG,
     free_netsgbuf_with_resp);

 for (i = 0; i < octeon_dev->ifcount; i++) {
  resp_size = sizeof(struct liquidio_if_cfg_resp);
  data_size = sizeof(struct lio_version);
  sc = (struct octeon_soft_command *)
   octeon_alloc_soft_command(octeon_dev, data_size,
        resp_size, 0);
  resp = (struct liquidio_if_cfg_resp *)sc->virtrptr;
  vdata = (struct lio_version *)sc->virtdptr;

  *((u64 *)vdata) = 0;
  vdata->major = cpu_to_be16(LIQUIDIO_BASE_MAJOR_VERSION);
  vdata->minor = cpu_to_be16(LIQUIDIO_BASE_MINOR_VERSION);
  vdata->micro = cpu_to_be16(LIQUIDIO_BASE_MICRO_VERSION);

  if_cfg.u64 = 0;

  if_cfg.s.num_iqueues = octeon_dev->sriov_info.rings_per_vf;
  if_cfg.s.num_oqueues = octeon_dev->sriov_info.rings_per_vf;
  if_cfg.s.base_queue = 0;

  sc->iq_no = 0;

  octeon_prepare_soft_command(octeon_dev, sc, OPCODE_NIC,
         OPCODE_NIC_IF_CFG, 0, if_cfg.u64,
         0);

  init_completion(&sc->complete);
  sc->sc_status = OCTEON_REQUEST_PENDING;

  retval = octeon_send_soft_command(octeon_dev, sc);
  if (retval == IQ_SEND_FAILED) {
   dev_err(&octeon_dev->pci_dev->dev,
    "iq/oq config failed status: %x\n", retval);

   octeon_free_soft_command(octeon_dev, sc);
   return(-EIO);
  }




  retval = wait_for_sc_completion_timeout(octeon_dev, sc, 0);
  if (retval)
   return retval;

  retval = resp->status;
  if (retval) {
   dev_err(&octeon_dev->pci_dev->dev,
    "iq/oq config failed, retval = %d\n", retval);
   WRITE_ONCE(sc->caller_is_done, 1);
   return -EIO;
  }

  snprintf(octeon_dev->fw_info.liquidio_firmware_version,
    32, "%s",
    resp->cfg_info.liquidio_firmware_version);

  octeon_swap_8B_data((u64 *)(&resp->cfg_info),
        (sizeof(struct liquidio_if_cfg_info)) >> 3);

  num_iqueues = hweight64(resp->cfg_info.iqmask);
  num_oqueues = hweight64(resp->cfg_info.oqmask);

  if (!(num_iqueues) || !(num_oqueues)) {
   dev_err(&octeon_dev->pci_dev->dev,
    "Got bad iqueues (%016llx) or oqueues (%016llx) from firmware.\n",
    resp->cfg_info.iqmask, resp->cfg_info.oqmask);
   WRITE_ONCE(sc->caller_is_done, 1);
   goto setup_nic_dev_done;
  }
  dev_dbg(&octeon_dev->pci_dev->dev,
   "interface %d, iqmask %016llx, oqmask %016llx, numiqueues %d, numoqueues %d\n",
   i, resp->cfg_info.iqmask, resp->cfg_info.oqmask,
   num_iqueues, num_oqueues);

  netdev = alloc_etherdev_mq(LIO_SIZE, num_iqueues);

  if (!netdev) {
   dev_err(&octeon_dev->pci_dev->dev, "Device allocation failed\n");
   WRITE_ONCE(sc->caller_is_done, 1);
   goto setup_nic_dev_done;
  }

  SET_NETDEV_DEV(netdev, &octeon_dev->pci_dev->dev);




  netdev->netdev_ops = &lionetdevops;

  lio = GET_LIO(netdev);

  memset(lio, 0, sizeof(struct lio));

  lio->ifidx = ifidx_or_pfnum;

  props = &octeon_dev->props[i];
  props->gmxport = resp->cfg_info.linfo.gmxport;
  props->netdev = netdev;

  lio->linfo.num_rxpciq = num_oqueues;
  lio->linfo.num_txpciq = num_iqueues;

  for (j = 0; j < num_oqueues; j++) {
   lio->linfo.rxpciq[j].u64 =
       resp->cfg_info.linfo.rxpciq[j].u64;
  }
  for (j = 0; j < num_iqueues; j++) {
   lio->linfo.txpciq[j].u64 =
       resp->cfg_info.linfo.txpciq[j].u64;
  }

  lio->linfo.hw_addr = resp->cfg_info.linfo.hw_addr;
  lio->linfo.gmxport = resp->cfg_info.linfo.gmxport;
  lio->linfo.link.u64 = resp->cfg_info.linfo.link.u64;
  lio->linfo.macaddr_is_admin_asgnd =
   resp->cfg_info.linfo.macaddr_is_admin_asgnd;
  lio->linfo.macaddr_spoofchk =
   resp->cfg_info.linfo.macaddr_spoofchk;

  lio->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);

  lio->dev_capability = NETIF_F_HIGHDMA
          | NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM
          | NETIF_F_SG | NETIF_F_RXCSUM
          | NETIF_F_TSO | NETIF_F_TSO6
          | NETIF_F_GRO
          | NETIF_F_LRO;
  netif_set_gso_max_size(netdev, OCTNIC_GSO_MAX_SIZE);




  lio->enc_dev_capability = NETIF_F_IP_CSUM
       | NETIF_F_IPV6_CSUM
       | NETIF_F_GSO_UDP_TUNNEL
       | NETIF_F_HW_CSUM | NETIF_F_SG
       | NETIF_F_RXCSUM
       | NETIF_F_TSO | NETIF_F_TSO6
       | NETIF_F_LRO;

  netdev->hw_enc_features =
      (lio->enc_dev_capability & ~NETIF_F_LRO);
  netdev->vlan_features = lio->dev_capability;

  lio->dev_capability |= NETIF_F_HW_VLAN_CTAG_FILTER |
           NETIF_F_HW_VLAN_CTAG_RX |
           NETIF_F_HW_VLAN_CTAG_TX;

  netdev->features = (lio->dev_capability & ~NETIF_F_LRO);

  netdev->hw_features = lio->dev_capability;
  netdev->hw_features &= ~NETIF_F_HW_VLAN_CTAG_RX;


  netdev->min_mtu = LIO_MIN_MTU_SIZE;
  netdev->max_mtu = LIO_MAX_MTU_SIZE;

  WRITE_ONCE(sc->caller_is_done, 1);




  lio->oct_dev = octeon_dev;
  lio->octprops = props;
  lio->netdev = netdev;

  dev_dbg(&octeon_dev->pci_dev->dev,
   "if%d gmx: %d hw_addr: 0x%llx\n", i,
   lio->linfo.gmxport, CVM_CAST64(lio->linfo.hw_addr));


  octeon_swap_8B_data(&lio->linfo.hw_addr, 1);
  for (j = 0; j < ETH_ALEN; j++)
   mac[j] = *((u8 *)(((u8 *)&lio->linfo.hw_addr) + 2 + j));


  ether_addr_copy(netdev->dev_addr, mac);

  if (liquidio_setup_io_queues(octeon_dev, i,
          lio->linfo.num_txpciq,
          lio->linfo.num_rxpciq)) {
   dev_err(&octeon_dev->pci_dev->dev, "I/O queues creation failed\n");
   goto setup_nic_dev_free;
  }

  ifstate_set(lio, LIO_IFSTATE_DROQ_OPS);




  octeon_dev->fn_list.enable_interrupt(octeon_dev,
           OCTEON_ALL_INTR);




  lio->txq = lio->linfo.txpciq[0].s.q_no;
  lio->rxq = lio->linfo.rxpciq[0].s.q_no;

  lio->tx_qsize = octeon_get_tx_qsize(octeon_dev, lio->txq);
  lio->rx_qsize = octeon_get_rx_qsize(octeon_dev, lio->rxq);

  if (lio_setup_glists(octeon_dev, lio, num_iqueues)) {
   dev_err(&octeon_dev->pci_dev->dev,
    "Gather list allocation failed\n");
   goto setup_nic_dev_free;
  }


  liquidio_set_ethtool_ops(netdev);
  if (lio->oct_dev->chip_id == OCTEON_CN23XX_VF_VID)
   octeon_dev->priv_flags = OCT_PRIV_FLAG_DEFAULT;
  else
   octeon_dev->priv_flags = 0x0;

  if (netdev->features & NETIF_F_LRO)
   liquidio_set_feature(netdev, OCTNET_CMD_LRO_ENABLE,
          OCTNIC_LROIPV4 | OCTNIC_LROIPV6);

  if (setup_link_status_change_wq(netdev))
   goto setup_nic_dev_free;

  if (setup_rx_oom_poll_fn(netdev))
   goto setup_nic_dev_free;


  if (register_netdev(netdev)) {
   dev_err(&octeon_dev->pci_dev->dev, "Device registration failed\n");
   goto setup_nic_dev_free;
  }

  dev_dbg(&octeon_dev->pci_dev->dev,
   "Setup NIC ifidx:%d mac:%02x%02x%02x%02x%02x%02x\n",
   i, mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
  netif_carrier_off(netdev);
  lio->link_changes++;

  ifstate_set(lio, LIO_IFSTATE_REGISTERED);





  liquidio_set_rxcsum_command(netdev, OCTNET_CMD_TNL_RX_CSUM_CTL,
         OCTNET_CMD_RXCSUM_ENABLE);
  liquidio_set_feature(netdev, OCTNET_CMD_TNL_TX_CSUM_CTL,
         OCTNET_CMD_TXCSUM_ENABLE);

  dev_dbg(&octeon_dev->pci_dev->dev,
   "NIC ifidx:%d Setup successful\n", i);

  octeon_dev->no_speed_setting = 1;
 }

 return 0;

setup_nic_dev_free:

 while (i--) {
  dev_err(&octeon_dev->pci_dev->dev,
   "NIC ifidx:%d Setup failed\n", i);
  liquidio_destroy_nic_device(octeon_dev, i);
 }

setup_nic_dev_done:

 return -ENODEV;
}
