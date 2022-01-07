
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vmxnet3_adapter {TYPE_3__* pdev; int cmd_lock; TYPE_2__* shared; } ;
struct net_device {int flags; } ;
struct Vmxnet3_RxFilterConf {int* vfTable; int rxMode; scalar_t__ mfTableLen; scalar_t__ mfTablePA; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct Vmxnet3_RxFilterConf rxFilterConf; } ;
struct TYPE_5__ {TYPE_1__ devRead; } ;


 size_t ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int PCI_DMA_TODEVICE ;
 int VMXNET3_CMD_UPDATE_MAC_FILTERS ;
 int VMXNET3_CMD_UPDATE_RX_MODE ;
 int VMXNET3_CMD_UPDATE_VLAN_FILTERS ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_RXM_ALL_MULTI ;
 int VMXNET3_RXM_BCAST ;
 int VMXNET3_RXM_MCAST ;
 int VMXNET3_RXM_PROMISC ;
 int VMXNET3_RXM_UCAST ;
 int VMXNET3_VFT_SIZE ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 scalar_t__ cpu_to_le16 (size_t) ;
 int cpu_to_le32 (int) ;
 scalar_t__ cpu_to_le64 (int ) ;
 int dma_map_single (int *,int *,size_t,int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int kfree (int *) ;
 int memset (int*,int ,int) ;
 int netdev_info (struct net_device*,char*) ;
 size_t netdev_mc_count (struct net_device*) ;
 int netdev_mc_empty (struct net_device*) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * vmxnet3_copy_mc (struct net_device*) ;
 int vmxnet3_restore_vlan (struct vmxnet3_adapter*) ;

__attribute__((used)) static void
vmxnet3_set_mc(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;
 struct Vmxnet3_RxFilterConf *rxConf =
     &adapter->shared->devRead.rxFilterConf;
 u8 *new_table = ((void*)0);
 dma_addr_t new_table_pa = 0;
 bool new_table_pa_valid = 0;
 u32 new_mode = VMXNET3_RXM_UCAST;

 if (netdev->flags & IFF_PROMISC) {
  u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
  memset(vfTable, 0, VMXNET3_VFT_SIZE * sizeof(*vfTable));

  new_mode |= VMXNET3_RXM_PROMISC;
 } else {
  vmxnet3_restore_vlan(adapter);
 }

 if (netdev->flags & IFF_BROADCAST)
  new_mode |= VMXNET3_RXM_BCAST;

 if (netdev->flags & IFF_ALLMULTI)
  new_mode |= VMXNET3_RXM_ALL_MULTI;
 else
  if (!netdev_mc_empty(netdev)) {
   new_table = vmxnet3_copy_mc(netdev);
   if (new_table) {
    size_t sz = netdev_mc_count(netdev) * ETH_ALEN;

    rxConf->mfTableLen = cpu_to_le16(sz);
    new_table_pa = dma_map_single(
       &adapter->pdev->dev,
       new_table,
       sz,
       PCI_DMA_TODEVICE);
    if (!dma_mapping_error(&adapter->pdev->dev,
             new_table_pa)) {
     new_mode |= VMXNET3_RXM_MCAST;
     new_table_pa_valid = 1;
     rxConf->mfTablePA = cpu_to_le64(
        new_table_pa);
    }
   }
   if (!new_table_pa_valid) {
    netdev_info(netdev,
         "failed to copy mcast list, setting ALL_MULTI\n");
    new_mode |= VMXNET3_RXM_ALL_MULTI;
   }
  }

 if (!(new_mode & VMXNET3_RXM_MCAST)) {
  rxConf->mfTableLen = 0;
  rxConf->mfTablePA = 0;
 }

 spin_lock_irqsave(&adapter->cmd_lock, flags);
 if (new_mode != rxConf->rxMode) {
  rxConf->rxMode = cpu_to_le32(new_mode);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_UPDATE_RX_MODE);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_UPDATE_VLAN_FILTERS);
 }

 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
          VMXNET3_CMD_UPDATE_MAC_FILTERS);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);

 if (new_table_pa_valid)
  dma_unmap_single(&adapter->pdev->dev, new_table_pa,
     rxConf->mfTableLen, PCI_DMA_TODEVICE);
 kfree(new_table);
}
