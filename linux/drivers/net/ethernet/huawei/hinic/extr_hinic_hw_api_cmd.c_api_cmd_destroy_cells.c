
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_api_cmd_chain {int dummy; } ;


 int api_cmd_destroy_cell (struct hinic_api_cmd_chain*,int) ;

__attribute__((used)) static void api_cmd_destroy_cells(struct hinic_api_cmd_chain *chain,
      int num_cells)
{
 int cell_idx;

 for (cell_idx = 0; cell_idx < num_cells; cell_idx++)
  api_cmd_destroy_cell(chain, cell_idx);
}
