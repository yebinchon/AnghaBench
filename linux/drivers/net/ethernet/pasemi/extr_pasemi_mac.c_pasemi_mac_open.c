
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pasemi_mac {scalar_t__ type; TYPE_5__* tx; int napi; TYPE_5__* rx; TYPE_1__* pdev; int rx_irq_name; int tx_irq_name; int dma_if; int num_cs; } ;
struct net_device {int mtu; char* name; scalar_t__ phydev; } ;
struct TYPE_14__ {int chno; } ;
struct TYPE_10__ {int irq; int chno; } ;
struct TYPE_13__ {TYPE_2__ chan; int clean_timer; } ;
struct TYPE_12__ {TYPE_7__ chan; } ;
struct TYPE_11__ {TYPE_7__ chan; } ;
struct TYPE_9__ {int dev; } ;


 scalar_t__ HZ ;
 scalar_t__ MAC_TYPE_GMAC ;
 int PAS_DMA_RXCHAN_CCMDSTA_DT ;
 int PAS_DMA_RXCHAN_CCMDSTA_DU ;
 int PAS_DMA_RXCHAN_CCMDSTA_FD ;
 int PAS_DMA_RXCHAN_CCMDSTA_OD ;
 int PAS_DMA_RXCHAN_INCR (int ) ;
 int PAS_DMA_RXINT_RCMDSTA (int ) ;
 int PAS_DMA_RXINT_RCMDSTA_BP ;
 int PAS_DMA_RXINT_RCMDSTA_BT ;
 int PAS_DMA_RXINT_RCMDSTA_DROPS_M ;
 int PAS_DMA_RXINT_RCMDSTA_EN ;
 int PAS_DMA_RXINT_RCMDSTA_OO ;
 int PAS_DMA_TXCHAN_TCMDSTA_DA ;
 int PAS_DMA_TXCHAN_TCMDSTA_DB ;
 int PAS_DMA_TXCHAN_TCMDSTA_DE ;
 int PAS_DMA_TXCHAN_TCMDSTA_SZ ;
 int PAS_IOB_DMA_COM_TIMEOUTCFG ;
 int PAS_IOB_DMA_COM_TIMEOUTCFG_TCNT (int) ;
 int PAS_IOB_DMA_RXCH_CFG (int ) ;
 int PAS_IOB_DMA_RXCH_CFG_CNTTH (int) ;
 int PAS_IOB_DMA_TXCH_CFG (int ) ;
 int PAS_IOB_DMA_TXCH_CFG_CNTTH (int) ;
 int PAS_MAC_CFG_PCFG ;
 unsigned int PAS_MAC_CFG_PCFG_CE ;
 unsigned int PAS_MAC_CFG_PCFG_PR ;
 unsigned int PAS_MAC_CFG_PCFG_S1 ;
 unsigned int PAS_MAC_CFG_PCFG_SPD_10G ;
 unsigned int PAS_MAC_CFG_PCFG_SPD_1G ;
 unsigned int PAS_MAC_CFG_PCFG_TSR_10G ;
 unsigned int PAS_MAC_CFG_PCFG_TSR_1G ;
 int PAS_MAC_CFG_TXP ;
 unsigned int PAS_MAC_CFG_TXP_COB (int) ;
 unsigned int PAS_MAC_CFG_TXP_FCE ;
 unsigned int PAS_MAC_CFG_TXP_FPC (int) ;
 unsigned int PAS_MAC_CFG_TXP_SL (int) ;
 unsigned int PAS_MAC_CFG_TXP_TIFG (int) ;
 unsigned int PAS_MAC_CFG_TXP_TIFT (int) ;
 int PAS_MAC_IPC_CHNL ;
 unsigned int PAS_MAC_IPC_CHNL_BCH (int ) ;
 unsigned int PAS_MAC_IPC_CHNL_DCHNO (int ) ;
 int PAS_MAC_RMON (int) ;
 int RX_RING_SIZE ;
 int dev_err (int *,char*,int ,int) ;
 int dev_warn (int *,char*,...) ;
 int free_irq (int ,TYPE_5__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pasemi_dma_start_chan (TYPE_7__*,int) ;
 int pasemi_mac_free_rx_resources (struct pasemi_mac*) ;
 int pasemi_mac_free_tx_resources (struct pasemi_mac*) ;
 int pasemi_mac_intf_enable (struct pasemi_mac*) ;
 int pasemi_mac_phy_init (struct net_device*) ;
 int pasemi_mac_replenish_rx_ring (struct net_device*,int) ;
 int pasemi_mac_restart_rx_intr (struct pasemi_mac*) ;
 int pasemi_mac_restart_tx_intr (struct pasemi_mac*) ;
 int pasemi_mac_rx_intr ;
 int pasemi_mac_setup_csrings (struct pasemi_mac*) ;
 int pasemi_mac_setup_rx_resources (struct net_device*) ;
 TYPE_5__* pasemi_mac_setup_tx_resources (struct net_device*) ;
 int pasemi_mac_tx_intr ;
 int pasemi_mac_tx_timer ;
 int phy_start (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,TYPE_5__*) ;
 TYPE_4__* rx_ring (struct pasemi_mac*) ;
 int snprintf (int ,int,char*,char*) ;
 int timer_setup (int *,int ,int ) ;
 TYPE_3__* tx_ring (struct pasemi_mac*) ;
 int write_dma_reg (int ,int) ;
 int write_iob_reg (int ,int ) ;
 int write_mac_reg (struct pasemi_mac*,int ,unsigned int) ;

__attribute__((used)) static int pasemi_mac_open(struct net_device *dev)
{
 struct pasemi_mac *mac = netdev_priv(dev);
 unsigned int flags;
 int i, ret;

 flags = PAS_MAC_CFG_TXP_FCE | PAS_MAC_CFG_TXP_FPC(3) |
  PAS_MAC_CFG_TXP_SL(3) | PAS_MAC_CFG_TXP_COB(0xf) |
  PAS_MAC_CFG_TXP_TIFT(8) | PAS_MAC_CFG_TXP_TIFG(12);

 write_mac_reg(mac, PAS_MAC_CFG_TXP, flags);

 ret = pasemi_mac_setup_rx_resources(dev);
 if (ret)
  goto out_rx_resources;

 mac->tx = pasemi_mac_setup_tx_resources(dev);

 if (!mac->tx)
  goto out_tx_ring;




 if (dev->mtu > 1500 && !mac->num_cs) {
  pasemi_mac_setup_csrings(mac);
  if (!mac->num_cs)
   goto out_tx_ring;
 }


 for (i = 0; i < 32; i++)
  write_mac_reg(mac, PAS_MAC_RMON(i), 0);


 write_iob_reg(PAS_IOB_DMA_COM_TIMEOUTCFG,
        PAS_IOB_DMA_COM_TIMEOUTCFG_TCNT(0x3ff));

 write_iob_reg(PAS_IOB_DMA_RXCH_CFG(mac->rx->chan.chno),
        PAS_IOB_DMA_RXCH_CFG_CNTTH(256));

 write_iob_reg(PAS_IOB_DMA_TXCH_CFG(mac->tx->chan.chno),
        PAS_IOB_DMA_TXCH_CFG_CNTTH(32));

 write_mac_reg(mac, PAS_MAC_IPC_CHNL,
        PAS_MAC_IPC_CHNL_DCHNO(mac->rx->chan.chno) |
        PAS_MAC_IPC_CHNL_BCH(mac->rx->chan.chno));


 write_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if),
        PAS_DMA_RXINT_RCMDSTA_EN |
        PAS_DMA_RXINT_RCMDSTA_DROPS_M |
        PAS_DMA_RXINT_RCMDSTA_BP |
        PAS_DMA_RXINT_RCMDSTA_OO |
        PAS_DMA_RXINT_RCMDSTA_BT);


 pasemi_dma_start_chan(&rx_ring(mac)->chan, PAS_DMA_RXCHAN_CCMDSTA_DU |
         PAS_DMA_RXCHAN_CCMDSTA_OD |
         PAS_DMA_RXCHAN_CCMDSTA_FD |
         PAS_DMA_RXCHAN_CCMDSTA_DT);


 pasemi_dma_start_chan(&tx_ring(mac)->chan, PAS_DMA_TXCHAN_TCMDSTA_SZ |
         PAS_DMA_TXCHAN_TCMDSTA_DB |
         PAS_DMA_TXCHAN_TCMDSTA_DE |
         PAS_DMA_TXCHAN_TCMDSTA_DA);

 pasemi_mac_replenish_rx_ring(dev, RX_RING_SIZE);

 write_dma_reg(PAS_DMA_RXCHAN_INCR(rx_ring(mac)->chan.chno),
        RX_RING_SIZE>>1);


 pasemi_mac_restart_rx_intr(mac);
 pasemi_mac_restart_tx_intr(mac);

 flags = PAS_MAC_CFG_PCFG_S1 | PAS_MAC_CFG_PCFG_PR | PAS_MAC_CFG_PCFG_CE;

 if (mac->type == MAC_TYPE_GMAC)
  flags |= PAS_MAC_CFG_PCFG_TSR_1G | PAS_MAC_CFG_PCFG_SPD_1G;
 else
  flags |= PAS_MAC_CFG_PCFG_TSR_10G | PAS_MAC_CFG_PCFG_SPD_10G;


 write_mac_reg(mac, PAS_MAC_CFG_PCFG, flags);

 ret = pasemi_mac_phy_init(dev);
 if (ret) {

  pasemi_mac_intf_enable(mac);
  if (mac->type == MAC_TYPE_GMAC) {

   dev_warn(&mac->pdev->dev,
     "PHY init failed: %d.\n", ret);
   dev_warn(&mac->pdev->dev,
     "Defaulting to 1Gbit full duplex\n");
  }
 }

 netif_start_queue(dev);
 napi_enable(&mac->napi);

 snprintf(mac->tx_irq_name, sizeof(mac->tx_irq_name), "%s tx",
   dev->name);

 ret = request_irq(mac->tx->chan.irq, pasemi_mac_tx_intr, 0,
     mac->tx_irq_name, mac->tx);
 if (ret) {
  dev_err(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
   mac->tx->chan.irq, ret);
  goto out_tx_int;
 }

 snprintf(mac->rx_irq_name, sizeof(mac->rx_irq_name), "%s rx",
   dev->name);

 ret = request_irq(mac->rx->chan.irq, pasemi_mac_rx_intr, 0,
     mac->rx_irq_name, mac->rx);
 if (ret) {
  dev_err(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
   mac->rx->chan.irq, ret);
  goto out_rx_int;
 }

 if (dev->phydev)
  phy_start(dev->phydev);

 timer_setup(&mac->tx->clean_timer, pasemi_mac_tx_timer, 0);
 mod_timer(&mac->tx->clean_timer, jiffies + HZ);

 return 0;

out_rx_int:
 free_irq(mac->tx->chan.irq, mac->tx);
out_tx_int:
 napi_disable(&mac->napi);
 netif_stop_queue(dev);
out_tx_ring:
 if (mac->tx)
  pasemi_mac_free_tx_resources(mac);
 pasemi_mac_free_rx_resources(mac);
out_rx_resources:

 return ret;
}
