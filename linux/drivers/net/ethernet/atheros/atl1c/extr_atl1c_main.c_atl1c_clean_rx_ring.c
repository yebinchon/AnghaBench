
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct atl1c_rrd_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct atl1c_rfd_ring {int count; scalar_t__ next_to_use; scalar_t__ next_to_clean; int size; int desc; struct atl1c_buffer* buffer_info; } ;
struct atl1c_buffer {int dummy; } ;
struct atl1c_adapter {struct pci_dev* pdev; struct atl1c_rrd_ring rrd_ring; struct atl1c_rfd_ring rfd_ring; } ;


 int atl1c_clean_buffer (struct pci_dev*,struct atl1c_buffer*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void atl1c_clean_rx_ring(struct atl1c_adapter *adapter)
{
 struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1c_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct atl1c_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 int j;

 for (j = 0; j < rfd_ring->count; j++) {
  buffer_info = &rfd_ring->buffer_info[j];
  atl1c_clean_buffer(pdev, buffer_info);
 }

 memset(rfd_ring->desc, 0, rfd_ring->size);
 rfd_ring->next_to_clean = 0;
 rfd_ring->next_to_use = 0;
 rrd_ring->next_to_use = 0;
 rrd_ring->next_to_clean = 0;
}
