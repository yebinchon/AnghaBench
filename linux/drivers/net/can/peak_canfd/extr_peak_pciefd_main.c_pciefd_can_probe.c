
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int freq; } ;
struct TYPE_6__ {TYPE_1__ clock; } ;
struct TYPE_7__ {int cmd_maxlen; TYPE_2__ can; int index; int * cmd_buffer; int write_tx_msg; int alloc_tx_msg; int enable_tx_path; int post_cmd; int write_cmd; int pre_cmd; } ;
struct pciefd_can {scalar_t__ reg_base; int tx_lock; TYPE_3__ ucan; void* tx_dma_vaddr; int tx_dma_laddr; void* rx_dma_vaddr; int rx_dma_laddr; struct pciefd_board* board; int pucan_cmd; } ;
struct pciefd_board {size_t can_count; TYPE_4__* pci_dev; struct pciefd_can** can; scalar_t__ reg_base; } ;
struct net_device {int irq; int name; } ;
struct TYPE_8__ {int dev; int irq; } ;
 int CANFD_MISC_TS_RST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCIEFD_CANX_OFF (int ) ;
 int PCIEFD_ECHO_SKB_MAX ;
 int PCIEFD_REG_CAN_CLK_SEL ;
 int PCIEFD_REG_CAN_MISC ;
 int PCIEFD_RX_DMA_SIZE ;
 int PCIEFD_TX_DMA_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_peak_canfd_dev (int,size_t,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ,scalar_t__,int ) ;
 void* dmam_alloc_coherent (int *,int,int *,int ) ;
 int free_candev (struct net_device*) ;
 struct pciefd_can* netdev_priv (struct net_device*) ;
 int pciefd_alloc_tx_msg ;
 int pciefd_can_readreg (struct pciefd_can*,int ) ;
 int pciefd_can_writereg (struct pciefd_can*,int,int ) ;
 int pciefd_enable_tx_path ;
 int pciefd_post_cmd ;
 int pciefd_pre_cmd ;
 int pciefd_write_cmd ;
 int pciefd_write_tx_msg ;
 int register_candev (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pciefd_can_probe(struct pciefd_board *pciefd)
{
 struct net_device *ndev;
 struct pciefd_can *priv;
 u32 clk;
 int err;


 ndev = alloc_peak_canfd_dev(sizeof(*priv), pciefd->can_count,
        PCIEFD_ECHO_SKB_MAX);
 if (!ndev) {
  dev_err(&pciefd->pci_dev->dev,
   "failed to alloc candev object\n");
  goto failure;
 }

 priv = netdev_priv(ndev);




 priv->ucan.pre_cmd = pciefd_pre_cmd;
 priv->ucan.write_cmd = pciefd_write_cmd;
 priv->ucan.post_cmd = pciefd_post_cmd;
 priv->ucan.enable_tx_path = pciefd_enable_tx_path;
 priv->ucan.alloc_tx_msg = pciefd_alloc_tx_msg;
 priv->ucan.write_tx_msg = pciefd_write_tx_msg;


 priv->ucan.cmd_buffer = &priv->pucan_cmd;
 priv->ucan.cmd_maxlen = sizeof(priv->pucan_cmd);

 priv->board = pciefd;


 priv->reg_base = pciefd->reg_base + PCIEFD_CANX_OFF(priv->ucan.index);


 priv->rx_dma_vaddr = dmam_alloc_coherent(&pciefd->pci_dev->dev,
       PCIEFD_RX_DMA_SIZE,
       &priv->rx_dma_laddr,
       GFP_KERNEL);
 if (!priv->rx_dma_vaddr) {
  dev_err(&pciefd->pci_dev->dev,
   "Rx dmam_alloc_coherent(%u) failure\n",
   PCIEFD_RX_DMA_SIZE);
  goto err_free_candev;
 }


 priv->tx_dma_vaddr = dmam_alloc_coherent(&pciefd->pci_dev->dev,
       PCIEFD_TX_DMA_SIZE,
       &priv->tx_dma_laddr,
       GFP_KERNEL);
 if (!priv->tx_dma_vaddr) {
  dev_err(&pciefd->pci_dev->dev,
   "Tx dmam_alloc_coherent(%u) failure\n",
   PCIEFD_TX_DMA_SIZE);
  goto err_free_candev;
 }


 pciefd_can_writereg(priv, CANFD_MISC_TS_RST, PCIEFD_REG_CAN_MISC);


 clk = pciefd_can_readreg(priv, PCIEFD_REG_CAN_CLK_SEL);
 switch (clk) {
 case 133:
  priv->ucan.can.clock.freq = 20 * 1000 * 1000;
  break;
 case 132:
  priv->ucan.can.clock.freq = 24 * 1000 * 1000;
  break;
 case 131:
  priv->ucan.can.clock.freq = 30 * 1000 * 1000;
  break;
 case 130:
  priv->ucan.can.clock.freq = 40 * 1000 * 1000;
  break;
 case 129:
  priv->ucan.can.clock.freq = 60 * 1000 * 1000;
  break;
 default:
  pciefd_can_writereg(priv, 128,
        PCIEFD_REG_CAN_CLK_SEL);


 case 128:
  priv->ucan.can.clock.freq = 80 * 1000 * 1000;
  break;
 }

 ndev->irq = pciefd->pci_dev->irq;

 SET_NETDEV_DEV(ndev, &pciefd->pci_dev->dev);

 err = register_candev(ndev);
 if (err) {
  dev_err(&pciefd->pci_dev->dev,
   "couldn't register CAN device: %d\n", err);
  goto err_free_candev;
 }

 spin_lock_init(&priv->tx_lock);


 pciefd->can[pciefd->can_count] = priv;

 dev_info(&pciefd->pci_dev->dev, "%s at reg_base=0x%p irq=%d\n",
   ndev->name, priv->reg_base, ndev->irq);

 return 0;

err_free_candev:
 free_candev(ndev);

failure:
 return -ENOMEM;
}
