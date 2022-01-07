
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; int dev; } ;
struct TYPE_9__ {int num_vectors; int * vector_list; int start_vector; } ;
struct be_dev_info {int intr_mode; TYPE_4__ msix; int dev_family; int mac_addr; TYPE_2__* netdev; int db_total_size; int db_page_size; int unmapped_db; int db; struct pci_dev* pdev; scalar_t__ dpp_unmapped_len; scalar_t__ dpp_unmapped_addr; } ;
struct TYPE_6__ {int total_size; int size; int io_addr; } ;
struct be_adapter {int num_msix_vec; int num_msix_roce_vec; int ocrdma_dev; TYPE_3__* msix_entries; int num_evt_qs; int sli_family; TYPE_2__* netdev; TYPE_1__ roce_db; int db; struct pci_dev* pdev; } ;
struct TYPE_10__ {scalar_t__ be_abi_version; int (* add ) (struct be_dev_info*) ;} ;
struct TYPE_8__ {int vector; } ;
struct TYPE_7__ {int dev_addr; } ;


 int BE_INTERRUPT_MODE_INTX ;
 int BE_INTERRUPT_MODE_MSIX ;
 scalar_t__ BE_ROCE_ABI_VERSION ;
 int ETH_ALEN ;
 int MAX_MSIX_VECTORS ;
 scalar_t__ OC_DEVICE_ID5 ;
 int dev_warn (int *,char*) ;
 int memcpy (int ,int ,int ) ;
 int min (int,int ) ;
 scalar_t__ msix_enabled (struct be_adapter*) ;
 TYPE_5__* ocrdma_drv ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int stub1 (struct be_dev_info*) ;

__attribute__((used)) static void _be_roce_dev_add(struct be_adapter *adapter)
{
 struct be_dev_info dev_info;
 int i, num_vec;
 struct pci_dev *pdev = adapter->pdev;

 if (!ocrdma_drv)
  return;

 if (ocrdma_drv->be_abi_version != BE_ROCE_ABI_VERSION) {
  dev_warn(&pdev->dev, "Cannot initialize RoCE due to ocrdma ABI mismatch\n");
  return;
 }

 if (pdev->device == OC_DEVICE_ID5) {

  if (!msix_enabled(adapter))
   return;

  dev_info.dpp_unmapped_addr = pci_resource_start(pdev, 2);
  dev_info.dpp_unmapped_len = pci_resource_len(pdev, 2);
 } else {
  dev_info.dpp_unmapped_addr = 0;
  dev_info.dpp_unmapped_len = 0;
 }
 dev_info.pdev = adapter->pdev;
 dev_info.db = adapter->db;
 dev_info.unmapped_db = adapter->roce_db.io_addr;
 dev_info.db_page_size = adapter->roce_db.size;
 dev_info.db_total_size = adapter->roce_db.total_size;
 dev_info.netdev = adapter->netdev;
 memcpy(dev_info.mac_addr, adapter->netdev->dev_addr, ETH_ALEN);
 dev_info.dev_family = adapter->sli_family;
 if (msix_enabled(adapter)) {



  num_vec = adapter->num_msix_vec + adapter->num_msix_roce_vec;
  dev_info.intr_mode = BE_INTERRUPT_MODE_MSIX;
  dev_info.msix.num_vectors = min(num_vec, MAX_MSIX_VECTORS);




  dev_info.msix.start_vector = adapter->num_evt_qs;
  for (i = 0; i < dev_info.msix.num_vectors; i++) {
   dev_info.msix.vector_list[i] =
       adapter->msix_entries[i].vector;
  }
 } else {
  dev_info.msix.num_vectors = 0;
  dev_info.intr_mode = BE_INTERRUPT_MODE_INTX;
 }
 adapter->ocrdma_dev = ocrdma_drv->add(&dev_info);
}
