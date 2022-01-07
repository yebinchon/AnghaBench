
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct atl1_tpd_ring {scalar_t__ dma; int * desc; int * buffer_info; } ;
struct atl1_rrd_ring {scalar_t__ dma; int * desc; } ;
struct atl1_ring_header {int dma; int desc; int size; } ;
struct atl1_rfd_ring {scalar_t__ dma; int * desc; int * buffer_info; } ;
struct TYPE_4__ {int * smb; scalar_t__ dma; } ;
struct TYPE_3__ {int * cmb; scalar_t__ dma; } ;
struct atl1_adapter {TYPE_2__ smb; TYPE_1__ cmb; struct atl1_ring_header ring_header; struct atl1_rrd_ring rrd_ring; struct atl1_rfd_ring rfd_ring; struct atl1_tpd_ring tpd_ring; struct pci_dev* pdev; } ;


 int atl1_clean_rx_ring (struct atl1_adapter*) ;
 int atl1_clean_tx_ring (struct atl1_adapter*) ;
 int kfree (int *) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void atl1_free_ring_resources(struct atl1_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
 struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct atl1_ring_header *ring_header = &adapter->ring_header;

 atl1_clean_tx_ring(adapter);
 atl1_clean_rx_ring(adapter);

 kfree(tpd_ring->buffer_info);
 pci_free_consistent(pdev, ring_header->size, ring_header->desc,
  ring_header->dma);

 tpd_ring->buffer_info = ((void*)0);
 tpd_ring->desc = ((void*)0);
 tpd_ring->dma = 0;

 rfd_ring->buffer_info = ((void*)0);
 rfd_ring->desc = ((void*)0);
 rfd_ring->dma = 0;

 rrd_ring->desc = ((void*)0);
 rrd_ring->dma = 0;

 adapter->cmb.dma = 0;
 adapter->cmb.cmb = ((void*)0);

 adapter->smb.dma = 0;
 adapter->smb.smb = ((void*)0);
}
