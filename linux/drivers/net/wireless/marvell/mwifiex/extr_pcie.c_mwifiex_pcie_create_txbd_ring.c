
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int txbd_ring_size; scalar_t__ txbd_ring_pbase; int txbd_ring_vbase; int dev; int txbd_rdptr; scalar_t__ txbd_wrptr; TYPE_1__ pcie; } ;
struct mwifiex_pfu_buf_desc {int dummy; } ;
struct mwifiex_pcie_card_reg {scalar_t__ pfu_enabled; int tx_rollover_ind; } ;
struct mwifiex_pcie_buf_desc {int dummy; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int DATA ;
 int ENOMEM ;
 int ERROR ;
 int INFO ;
 int MWIFIEX_MAX_TXRX_BD ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int,...) ;
 int mwifiex_init_txq_ring (struct mwifiex_adapter*) ;
 int pci_alloc_consistent (int ,int,scalar_t__*) ;

__attribute__((used)) static int mwifiex_pcie_create_txbd_ring(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;






 card->txbd_wrptr = 0;

 if (reg->pfu_enabled)
  card->txbd_rdptr = 0;
 else
  card->txbd_rdptr |= reg->tx_rollover_ind;



 if (reg->pfu_enabled)
  card->txbd_ring_size = sizeof(struct mwifiex_pfu_buf_desc) *
           MWIFIEX_MAX_TXRX_BD;
 else
  card->txbd_ring_size = sizeof(struct mwifiex_pcie_buf_desc) *
           MWIFIEX_MAX_TXRX_BD;

 mwifiex_dbg(adapter, INFO,
      "info: txbd_ring: Allocating %d bytes\n",
      card->txbd_ring_size);
 card->txbd_ring_vbase = pci_alloc_consistent(card->dev,
           card->txbd_ring_size,
           &card->txbd_ring_pbase);
 if (!card->txbd_ring_vbase) {
  mwifiex_dbg(adapter, ERROR,
       "allocate consistent memory (%d bytes) failed!\n",
       card->txbd_ring_size);
  return -ENOMEM;
 }
 mwifiex_dbg(adapter, DATA,
      "info: txbd_ring - base: %p, pbase: %#x:%x, len: %x\n",
      card->txbd_ring_vbase, (unsigned int)card->txbd_ring_pbase,
      (u32)((u64)card->txbd_ring_pbase >> 32),
      card->txbd_ring_size);

 return mwifiex_init_txq_ring(adapter);
}
