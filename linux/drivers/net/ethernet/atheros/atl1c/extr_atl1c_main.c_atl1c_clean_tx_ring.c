
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct pci_dev {int dummy; } ;
struct atl1c_tpd_ring {size_t count; scalar_t__ next_to_use; int next_to_clean; int desc; struct atl1c_buffer* buffer_info; } ;
struct atl1c_tpd_desc {int dummy; } ;
struct atl1c_buffer {int dummy; } ;
struct atl1c_adapter {int netdev; struct pci_dev* pdev; struct atl1c_tpd_ring* tpd_ring; } ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;


 int atl1c_clean_buffer (struct pci_dev*,struct atl1c_buffer*) ;
 int atomic_set (int *,int ) ;
 int memset (int ,int ,int) ;
 int netdev_reset_queue (int ) ;

__attribute__((used)) static void atl1c_clean_tx_ring(struct atl1c_adapter *adapter,
    enum atl1c_trans_queue type)
{
 struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
 struct atl1c_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 u16 index, ring_count;

 ring_count = tpd_ring->count;
 for (index = 0; index < ring_count; index++) {
  buffer_info = &tpd_ring->buffer_info[index];
  atl1c_clean_buffer(pdev, buffer_info);
 }

 netdev_reset_queue(adapter->netdev);


 memset(tpd_ring->desc, 0, sizeof(struct atl1c_tpd_desc) *
  ring_count);
 atomic_set(&tpd_ring->next_to_clean, 0);
 tpd_ring->next_to_use = 0;
}
