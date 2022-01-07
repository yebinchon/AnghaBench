
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int can_ext_scan; int num_mem_types; int mem_type_mapping_tbl; int tx_buf_size; } ;
struct pcie_service_card {TYPE_1__ pcie; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int ext_scan; int num_mem_types; int mem_type_mapping_tbl; int tx_buf_size; struct pcie_service_card* card; } ;


 int mwifiex_pcie_get_fw_name (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_pcie_request_irq (struct mwifiex_adapter*) ;

__attribute__((used)) static int mwifiex_register_dev(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;


 card->adapter = adapter;

 if (mwifiex_pcie_request_irq(adapter))
  return -1;

 adapter->tx_buf_size = card->pcie.tx_buf_size;
 adapter->mem_type_mapping_tbl = card->pcie.mem_type_mapping_tbl;
 adapter->num_mem_types = card->pcie.num_mem_types;
 adapter->ext_scan = card->pcie.can_ext_scan;
 mwifiex_pcie_get_fw_name(adapter);

 return 0;
}
