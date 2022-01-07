
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_service_card {int txbd_flush; int txbd_rdptr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int CPU_INTR_DNLD_RDY ;
 int ERROR ;
 int PCIE_CPU_INT_EVENT ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_pcie_txbd_empty (struct pcie_service_card*,int ) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;

__attribute__((used)) static int mwifiex_clean_pcie_ring_buf(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;

 if (!mwifiex_pcie_txbd_empty(card, card->txbd_rdptr)) {
  card->txbd_flush = 1;



  if (mwifiex_write_reg(adapter, PCIE_CPU_INT_EVENT,
          CPU_INTR_DNLD_RDY)) {
   mwifiex_dbg(adapter, ERROR,
        "failed to assert dnld-rdy interrupt.\n");
   return -1;
  }
 }
 return 0;
}
