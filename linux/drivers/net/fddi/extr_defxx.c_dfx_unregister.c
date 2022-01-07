
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_4__ {int mem; } ;
struct TYPE_5__ {int rcv_bufs_to_post; TYPE_1__ base; int kmalloced_dma; scalar_t__ kmalloced; } ;
typedef int PI_DESCR_BLOCK ;
typedef int PI_CONSUMER_BLOCK ;
typedef TYPE_2__ DFX_board_t ;


 int DFX_BUS_TC (struct device*) ;
 scalar_t__ DFX_MMIO ;
 int PI_ALIGN_K_DESC_BLK ;
 int PI_CMD_REQ_K_SIZE_MAX ;
 int PI_CMD_RSP_K_SIZE_MAX ;
 int PI_RCV_DATA_K_SIZE_MAX ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int dev_is_pci (struct device*) ;
 int dfx_bus_uninit (struct net_device*) ;
 int dfx_get_bars (struct device*,scalar_t__*,scalar_t__*) ;
 int dma_free_coherent (struct device*,int,scalar_t__,int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int pci_disable_device (int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int release_region (scalar_t__,scalar_t__) ;
 int to_pci_dev (struct device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void dfx_unregister(struct device *bdev)
{
 struct net_device *dev = dev_get_drvdata(bdev);
 DFX_board_t *bp = netdev_priv(dev);
 int dfx_bus_pci = dev_is_pci(bdev);
 int dfx_bus_tc = DFX_BUS_TC(bdev);
 int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;
 resource_size_t bar_start[3] = {0};
 resource_size_t bar_len[3] = {0};
 int alloc_size;

 unregister_netdev(dev);

 alloc_size = sizeof(PI_DESCR_BLOCK) +
       PI_CMD_REQ_K_SIZE_MAX + PI_CMD_RSP_K_SIZE_MAX +

       (bp->rcv_bufs_to_post * PI_RCV_DATA_K_SIZE_MAX) +

       sizeof(PI_CONSUMER_BLOCK) +
       (PI_ALIGN_K_DESC_BLK - 1);
 if (bp->kmalloced)
  dma_free_coherent(bdev, alloc_size,
      bp->kmalloced, bp->kmalloced_dma);

 dfx_bus_uninit(dev);

 dfx_get_bars(bdev, bar_start, bar_len);
 if (bar_start[2] != 0)
  release_region(bar_start[2], bar_len[2]);
 if (bar_start[1] != 0)
  release_region(bar_start[1], bar_len[1]);
 if (dfx_use_mmio) {
  iounmap(bp->base.mem);
  release_mem_region(bar_start[0], bar_len[0]);
 } else
  release_region(bar_start[0], bar_len[0]);

 if (dfx_bus_pci)
  pci_disable_device(to_pci_dev(bdev));

 free_netdev(dev);
}
