
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {size_t prod_idx; int chain_type; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; struct hinic_api_cmd_cell* curr_node; } ;
struct hinic_api_cmd_cell_ctxt {int api_cmd_vaddr; } ;
struct hinic_api_cmd_cell {int desc; } ;
typedef enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;


 int API_CMD_WRITE ;
 int API_TYPE ;
 int DEST ;
 int HINIC_API_CMD_DESC_SET (int,int ) ;

 int MGMT_BYPASS ;
 int NO_BYPASS ;
 int RD_WR ;
 int SGE_DATA ;
 int SIZE ;
 int SIZE_4BYTES (int ) ;
 int XOR_CHKSUM ;
 int cpu_to_be64 (int) ;
 int dev_err (int *,char*) ;
 int memcpy (int ,void*,int ) ;
 int xor_chksum_set (int*) ;

__attribute__((used)) static void prepare_api_cmd(struct hinic_api_cmd_chain *chain,
       enum hinic_node_id dest,
       void *cmd, u16 cmd_size)
{
 struct hinic_api_cmd_cell *cell = chain->curr_node;
 struct hinic_api_cmd_cell_ctxt *cell_ctxt;
 struct hinic_hwif *hwif = chain->hwif;
 struct pci_dev *pdev = hwif->pdev;

 cell_ctxt = &chain->cell_ctxt[chain->prod_idx];

 switch (chain->chain_type) {
 case 128:
  cell->desc = HINIC_API_CMD_DESC_SET(SGE_DATA, API_TYPE) |
        HINIC_API_CMD_DESC_SET(API_CMD_WRITE, RD_WR) |
        HINIC_API_CMD_DESC_SET(NO_BYPASS, MGMT_BYPASS);
  break;

 default:
  dev_err(&pdev->dev, "unknown Chain type\n");
  return;
 }

 cell->desc |= HINIC_API_CMD_DESC_SET(dest, DEST) |
        HINIC_API_CMD_DESC_SET(SIZE_4BYTES(cmd_size), SIZE);

 cell->desc |= HINIC_API_CMD_DESC_SET(xor_chksum_set(&cell->desc),
          XOR_CHKSUM);


 cell->desc = cpu_to_be64(cell->desc);

 memcpy(cell_ctxt->api_cmd_vaddr, cmd, cmd_size);
}
