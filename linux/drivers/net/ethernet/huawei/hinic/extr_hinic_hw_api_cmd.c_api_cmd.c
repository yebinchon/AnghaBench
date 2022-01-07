
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hinic_api_cmd_chain {size_t prod_idx; int sem; int curr_node; struct hinic_api_cmd_cell_ctxt* cell_ctxt; } ;
struct hinic_api_cmd_cell_ctxt {int cell_vaddr; } ;
typedef enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;


 int EBUSY ;
 scalar_t__ chain_busy (struct hinic_api_cmd_chain*) ;
 int cmd_chain_prod_idx_inc (struct hinic_api_cmd_chain*) ;
 int down (int *) ;
 int prepare_cell (struct hinic_api_cmd_chain*,int,int *,int ) ;
 int set_prod_idx (struct hinic_api_cmd_chain*) ;
 int up (int *) ;
 int wait_for_api_cmd_completion (struct hinic_api_cmd_chain*) ;
 int wmb () ;

__attribute__((used)) static int api_cmd(struct hinic_api_cmd_chain *chain,
     enum hinic_node_id dest, u8 *cmd, u16 cmd_size)
{
 struct hinic_api_cmd_cell_ctxt *ctxt;
 int err;

 down(&chain->sem);
 if (chain_busy(chain)) {
  up(&chain->sem);
  return -EBUSY;
 }

 prepare_cell(chain, dest, cmd, cmd_size);
 cmd_chain_prod_idx_inc(chain);

 wmb();

 set_prod_idx(chain);

 ctxt = &chain->cell_ctxt[chain->prod_idx];

 chain->curr_node = ctxt->cell_vaddr;

 err = wait_for_api_cmd_completion(chain);

 up(&chain->sem);
 return err;
}
