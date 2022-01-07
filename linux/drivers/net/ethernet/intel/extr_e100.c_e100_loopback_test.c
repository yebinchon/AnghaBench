
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct rfd {int dummy; } ;
struct TYPE_6__ {int phy_id; } ;
struct nic {int flags; int loopback; TYPE_3__ mii; int netdev; TYPE_2__* rx_to_clean; int pdev; } ;
typedef enum loopback { ____Placeholder_loopback } loopback ;
struct TYPE_5__ {TYPE_1__* skb; int dma_addr; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int BMCR_LOOPBACK ;
 int EAGAIN ;
 int ENOMEM ;
 int ETH_DATA_LEN ;
 int MII_BMCR ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RFD_BUF_LEN ;
 int e100_alloc_cbs (struct nic*) ;
 int e100_clean_cbs (struct nic*) ;
 int e100_hw_init (struct nic*) ;
 int e100_hw_reset (struct nic*) ;
 int e100_rx_alloc_list (struct nic*) ;
 int e100_rx_clean_list (struct nic*) ;
 int e100_start_receiver (struct nic*,int *) ;
 int e100_xmit_frame (struct sk_buff*,int ) ;
 int ich ;
 int lb_mac ;
 int lb_none ;
 int lb_phy ;
 int mdio_write (int ,int ,int ,int ) ;
 scalar_t__ memcmp (scalar_t__,int ,int ) ;
 int memset (int ,int,int ) ;
 int msleep (int) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static int e100_loopback_test(struct nic *nic, enum loopback loopback_mode)
{
 int err;
 struct sk_buff *skb;






 if ((err = e100_rx_alloc_list(nic)))
  return err;
 if ((err = e100_alloc_cbs(nic)))
  goto err_clean_rx;


 if (nic->flags & ich && loopback_mode == lb_phy)
  loopback_mode = lb_mac;

 nic->loopback = loopback_mode;
 if ((err = e100_hw_init(nic)))
  goto err_loopback_none;

 if (loopback_mode == lb_phy)
  mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR,
   BMCR_LOOPBACK);

 e100_start_receiver(nic, ((void*)0));

 if (!(skb = netdev_alloc_skb(nic->netdev, ETH_DATA_LEN))) {
  err = -ENOMEM;
  goto err_loopback_none;
 }
 skb_put(skb, ETH_DATA_LEN);
 memset(skb->data, 0xFF, ETH_DATA_LEN);
 e100_xmit_frame(skb, nic->netdev);

 msleep(10);

 pci_dma_sync_single_for_cpu(nic->pdev, nic->rx_to_clean->dma_addr,
   RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);

 if (memcmp(nic->rx_to_clean->skb->data + sizeof(struct rfd),
    skb->data, ETH_DATA_LEN))
  err = -EAGAIN;

err_loopback_none:
 mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR, 0);
 nic->loopback = lb_none;
 e100_clean_cbs(nic);
 e100_hw_reset(nic);
err_clean_rx:
 e100_rx_clean_list(nic);
 return err;
}
