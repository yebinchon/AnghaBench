
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_api_cmd_chain {int chain_type; struct hinic_api_cmd_cell* curr_node; } ;
struct hinic_api_cmd_cell {int ctrl; } ;
typedef enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;


 int get_cell_data_size (int ) ;
 int prepare_api_cmd (struct hinic_api_cmd_chain*,int,void*,int ) ;
 int prepare_cell_ctrl (int *,int ) ;

__attribute__((used)) static void prepare_cell(struct hinic_api_cmd_chain *chain,
    enum hinic_node_id dest,
    void *cmd, u16 cmd_size)
{
 struct hinic_api_cmd_cell *curr_node = chain->curr_node;
 u16 data_size = get_cell_data_size(chain->chain_type);

 prepare_cell_ctrl(&curr_node->ctrl, data_size);
 prepare_api_cmd(chain, dest, cmd, cmd_size);
}
