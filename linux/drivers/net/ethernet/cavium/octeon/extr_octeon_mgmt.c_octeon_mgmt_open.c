
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {int obase; void* osize; } ;
union cvmx_mixx_oring1 {int u64; TYPE_3__ s; } ;
struct TYPE_21__ {scalar_t__ orhwm; } ;
union cvmx_mixx_orhwm {int u64; TYPE_8__ s; } ;
struct TYPE_17__ {int ibase; void* isize; } ;
union cvmx_mixx_iring1 {int u64; TYPE_4__ s; } ;
struct TYPE_20__ {scalar_t__ irhwm; } ;
union cvmx_mixx_irhwm {int u64; TYPE_7__ s; } ;
struct TYPE_22__ {int ithena; int othena; } ;
union cvmx_mixx_intena {int u64; TYPE_9__ s; } ;
struct TYPE_18__ {int crc_strip; int en; int mrq_hwm; int lendian; scalar_t__ nbtarb; scalar_t__ reset; } ;
union cvmx_mixx_ctl {int u64; TYPE_5__ s; } ;
struct TYPE_19__ {int mode; int enable; int comp; scalar_t__ drv_byp; scalar_t__ clktx_byp; scalar_t__ dllrst; scalar_t__ clkrst; } ;
union cvmx_agl_prtx_ctl {int u64; TYPE_6__ s; } ;
struct TYPE_12__ {int ptp_mode; int pre_align; int pad_len; int vlan_len; int pre_free; int ctl_mcst; int ctl_bck; int ctl_drp; int pre_strp; int pre_chk; scalar_t__ ctl_smac; } ;
union cvmx_agl_gmx_rxx_frm_ctl {int u64; TYPE_10__ s; } ;
struct TYPE_14__ {int en; } ;
union cvmx_agl_gmx_inf_mode {int u64; TYPE_1__ s; } ;
struct TYPE_15__ {int byp_en1; int nctl1; int pctl1; int byp_en; int nctl; int pctl; } ;
union cvmx_agl_gmx_drv_ctl {int u64; TYPE_2__ s; } ;
struct sockaddr {int sa_data; } ;
struct octeon_mgmt {int tx_ring_handle; int rx_ring_handle; void* tx_ring; int dev; void* rx_ring; int napi; scalar_t__ last_speed; scalar_t__ last_link; scalar_t__ agl; scalar_t__ has_rx_tstamp; scalar_t__ mix; scalar_t__ irq; scalar_t__ agl_prt_ctl; scalar_t__ port; scalar_t__ rx_current_fill; scalar_t__ rx_next_fill; scalar_t__ rx_next; scalar_t__ tx_current_fill; scalar_t__ tx_next_clean; scalar_t__ tx_next; } ;
struct net_device {TYPE_11__* phydev; int name; int mtu; int dev_addr; } ;
struct TYPE_13__ {int supported; } ;


 scalar_t__ AGL_GMX_RX_FRM_CTL ;
 scalar_t__ AGL_GMX_RX_STATS_CTL ;
 scalar_t__ AGL_GMX_RX_STATS_PKTS_BAD ;
 scalar_t__ AGL_GMX_RX_STATS_PKTS_DRP ;
 scalar_t__ AGL_GMX_TX_STAT0 ;
 scalar_t__ AGL_GMX_TX_STAT1 ;
 scalar_t__ AGL_GMX_TX_STATS_CTL ;
 scalar_t__ CVMX_AGL_GMX_DRV_CTL ;
 scalar_t__ CVMX_AGL_GMX_INF_MODE ;
 scalar_t__ CVMX_AGL_GMX_TX_IFG ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ MIX_CTL ;
 scalar_t__ MIX_INTENA ;
 scalar_t__ MIX_IRHWM ;
 scalar_t__ MIX_IRING1 ;
 scalar_t__ MIX_ISR ;
 scalar_t__ MIX_ORHWM ;
 scalar_t__ MIX_ORING1 ;
 int NS_PER_PHY_CLK ;
 int OCTEON_CN52XX_PASS1_X ;
 int OCTEON_CN56XX_PASS1_X ;
 int OCTEON_CN5XXX ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 void* OCTEON_MGMT_RX_RING_SIZE ;
 void* OCTEON_MGMT_TX_RING_SIZE ;
 int cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 void* dma_map_single (int ,void*,int ,int ) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int linkmode_test_bit (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int napi_enable (int *) ;
 int ndelay (int) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int octeon_mgmt_change_mtu (struct net_device*,int ) ;
 int octeon_mgmt_disable_link (struct octeon_mgmt*) ;
 int octeon_mgmt_enable_link (struct octeon_mgmt*) ;
 scalar_t__ octeon_mgmt_init_phy (struct net_device*) ;
 int octeon_mgmt_interrupt ;
 int octeon_mgmt_reset_hw (struct octeon_mgmt*) ;
 int octeon_mgmt_rx_fill_ring (struct net_device*) ;
 int octeon_mgmt_set_mac_address (struct net_device*,struct sockaddr*) ;
 int octeon_mgmt_update_link (struct octeon_mgmt*) ;
 int phy_start_aneg (TYPE_11__*) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,int ,struct net_device*) ;
 int ring_size_to_bytes (void*) ;

__attribute__((used)) static int octeon_mgmt_open(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 union cvmx_mixx_ctl mix_ctl;
 union cvmx_agl_gmx_inf_mode agl_gmx_inf_mode;
 union cvmx_mixx_oring1 oring1;
 union cvmx_mixx_iring1 iring1;
 union cvmx_agl_gmx_rxx_frm_ctl rxx_frm_ctl;
 union cvmx_mixx_irhwm mix_irhwm;
 union cvmx_mixx_orhwm mix_orhwm;
 union cvmx_mixx_intena mix_intena;
 struct sockaddr sa;


 p->tx_ring = kzalloc(ring_size_to_bytes(OCTEON_MGMT_TX_RING_SIZE),
        GFP_KERNEL);
 if (!p->tx_ring)
  return -ENOMEM;
 p->tx_ring_handle =
  dma_map_single(p->dev, p->tx_ring,
          ring_size_to_bytes(OCTEON_MGMT_TX_RING_SIZE),
          DMA_BIDIRECTIONAL);
 p->tx_next = 0;
 p->tx_next_clean = 0;
 p->tx_current_fill = 0;


 p->rx_ring = kzalloc(ring_size_to_bytes(OCTEON_MGMT_RX_RING_SIZE),
        GFP_KERNEL);
 if (!p->rx_ring)
  goto err_nomem;
 p->rx_ring_handle =
  dma_map_single(p->dev, p->rx_ring,
          ring_size_to_bytes(OCTEON_MGMT_RX_RING_SIZE),
          DMA_BIDIRECTIONAL);

 p->rx_next = 0;
 p->rx_next_fill = 0;
 p->rx_current_fill = 0;

 octeon_mgmt_reset_hw(p);

 mix_ctl.u64 = cvmx_read_csr(p->mix + MIX_CTL);


 if (mix_ctl.s.reset) {
  mix_ctl.s.reset = 0;
  cvmx_write_csr(p->mix + MIX_CTL, mix_ctl.u64);
  do {
   mix_ctl.u64 = cvmx_read_csr(p->mix + MIX_CTL);
  } while (mix_ctl.s.reset);
 }

 if (OCTEON_IS_MODEL(OCTEON_CN5XXX)) {
  agl_gmx_inf_mode.u64 = 0;
  agl_gmx_inf_mode.s.en = 1;
  cvmx_write_csr(CVMX_AGL_GMX_INF_MODE, agl_gmx_inf_mode.u64);
 }
 if (OCTEON_IS_MODEL(OCTEON_CN56XX_PASS1_X)
  || OCTEON_IS_MODEL(OCTEON_CN52XX_PASS1_X)) {



  union cvmx_agl_gmx_drv_ctl drv_ctl;

  drv_ctl.u64 = cvmx_read_csr(CVMX_AGL_GMX_DRV_CTL);
  if (p->port) {
   drv_ctl.s.byp_en1 = 1;
   drv_ctl.s.nctl1 = 6;
   drv_ctl.s.pctl1 = 6;
  } else {
   drv_ctl.s.byp_en = 1;
   drv_ctl.s.nctl = 6;
   drv_ctl.s.pctl = 6;
  }
  cvmx_write_csr(CVMX_AGL_GMX_DRV_CTL, drv_ctl.u64);
 }

 oring1.u64 = 0;
 oring1.s.obase = p->tx_ring_handle >> 3;
 oring1.s.osize = OCTEON_MGMT_TX_RING_SIZE;
 cvmx_write_csr(p->mix + MIX_ORING1, oring1.u64);

 iring1.u64 = 0;
 iring1.s.ibase = p->rx_ring_handle >> 3;
 iring1.s.isize = OCTEON_MGMT_RX_RING_SIZE;
 cvmx_write_csr(p->mix + MIX_IRING1, iring1.u64);

 memcpy(sa.sa_data, netdev->dev_addr, ETH_ALEN);
 octeon_mgmt_set_mac_address(netdev, &sa);

 octeon_mgmt_change_mtu(netdev, netdev->mtu);




 mix_ctl.u64 = 0;
 mix_ctl.s.crc_strip = 1;
 mix_ctl.s.en = 1;
 mix_ctl.s.nbtarb = 0;

 mix_ctl.s.mrq_hwm = 1;



 cvmx_write_csr(p->mix + MIX_CTL, mix_ctl.u64);


 if (octeon_mgmt_init_phy(netdev)) {
  dev_err(p->dev, "Cannot initialize PHY on MIX%d.\n", p->port);
  goto err_noirq;
 }


 if (OCTEON_IS_MODEL(OCTEON_CN6XXX) && netdev->phydev) {
  union cvmx_agl_prtx_ctl agl_prtx_ctl;
  int rgmii_mode =
   (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
        netdev->phydev->supported) |
    linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
        netdev->phydev->supported)) != 0;

  agl_prtx_ctl.u64 = cvmx_read_csr(p->agl_prt_ctl);
  agl_prtx_ctl.s.mode = rgmii_mode ? 0 : 1;
  cvmx_write_csr(p->agl_prt_ctl, agl_prtx_ctl.u64);
  agl_prtx_ctl.u64 = cvmx_read_csr(p->agl_prt_ctl);
  agl_prtx_ctl.s.clkrst = 0;
  if (rgmii_mode) {
   agl_prtx_ctl.s.dllrst = 0;
   agl_prtx_ctl.s.clktx_byp = 0;
  }
  cvmx_write_csr(p->agl_prt_ctl, agl_prtx_ctl.u64);
  cvmx_read_csr(p->agl_prt_ctl);




  ndelay(256 * 8);


  agl_prtx_ctl.u64 = cvmx_read_csr(p->agl_prt_ctl);
  agl_prtx_ctl.s.enable = 1;
  cvmx_write_csr(p->agl_prt_ctl, agl_prtx_ctl.u64);


  agl_prtx_ctl.u64 = cvmx_read_csr(p->agl_prt_ctl);


  agl_prtx_ctl.s.comp = 1;
  agl_prtx_ctl.s.drv_byp = 0;
  cvmx_write_csr(p->agl_prt_ctl, agl_prtx_ctl.u64);

  cvmx_read_csr(p->agl_prt_ctl);


  ndelay(1040 * 8);







  cvmx_write_csr(CVMX_AGL_GMX_TX_IFG, 0xae);
 }

 octeon_mgmt_rx_fill_ring(netdev);



 cvmx_write_csr(p->agl + AGL_GMX_RX_STATS_CTL, 1);
 cvmx_write_csr(p->agl + AGL_GMX_RX_STATS_PKTS_DRP, 0);
 cvmx_write_csr(p->agl + AGL_GMX_RX_STATS_PKTS_BAD, 0);

 cvmx_write_csr(p->agl + AGL_GMX_TX_STATS_CTL, 1);
 cvmx_write_csr(p->agl + AGL_GMX_TX_STAT0, 0);
 cvmx_write_csr(p->agl + AGL_GMX_TX_STAT1, 0);


 cvmx_write_csr(p->mix + MIX_ISR, cvmx_read_csr(p->mix + MIX_ISR));

 if (request_irq(p->irq, octeon_mgmt_interrupt, 0, netdev->name,
   netdev)) {
  dev_err(p->dev, "request_irq(%d) failed.\n", p->irq);
  goto err_noirq;
 }


 mix_irhwm.u64 = 0;
 mix_irhwm.s.irhwm = 0;
 cvmx_write_csr(p->mix + MIX_IRHWM, mix_irhwm.u64);


 mix_orhwm.u64 = 0;
 mix_orhwm.s.orhwm = 0;
 cvmx_write_csr(p->mix + MIX_ORHWM, mix_orhwm.u64);


 mix_intena.u64 = 0;
 mix_intena.s.ithena = 1;
 mix_intena.s.othena = 1;
 cvmx_write_csr(p->mix + MIX_INTENA, mix_intena.u64);



 rxx_frm_ctl.u64 = 0;
 rxx_frm_ctl.s.ptp_mode = p->has_rx_tstamp ? 1 : 0;
 rxx_frm_ctl.s.pre_align = 1;



 rxx_frm_ctl.s.pad_len = 1;

 rxx_frm_ctl.s.vlan_len = 1;

 rxx_frm_ctl.s.pre_free = 1;

 rxx_frm_ctl.s.ctl_smac = 0;

 rxx_frm_ctl.s.ctl_mcst = 1;

 rxx_frm_ctl.s.ctl_bck = 1;

 rxx_frm_ctl.s.ctl_drp = 1;

 rxx_frm_ctl.s.pre_strp = 1;



 rxx_frm_ctl.s.pre_chk = 1;
 cvmx_write_csr(p->agl + AGL_GMX_RX_FRM_CTL, rxx_frm_ctl.u64);


 octeon_mgmt_disable_link(p);
 if (netdev->phydev)
  octeon_mgmt_update_link(p);
 octeon_mgmt_enable_link(p);

 p->last_link = 0;
 p->last_speed = 0;



 if (netdev->phydev) {
  netif_carrier_off(netdev);
  phy_start_aneg(netdev->phydev);
 }

 netif_wake_queue(netdev);
 napi_enable(&p->napi);

 return 0;
err_noirq:
 octeon_mgmt_reset_hw(p);
 dma_unmap_single(p->dev, p->rx_ring_handle,
    ring_size_to_bytes(OCTEON_MGMT_RX_RING_SIZE),
    DMA_BIDIRECTIONAL);
 kfree(p->rx_ring);
err_nomem:
 dma_unmap_single(p->dev, p->tx_ring_handle,
    ring_size_to_bytes(OCTEON_MGMT_TX_RING_SIZE),
    DMA_BIDIRECTIONAL);
 kfree(p->tx_ring);
 return -ENOMEM;
}
