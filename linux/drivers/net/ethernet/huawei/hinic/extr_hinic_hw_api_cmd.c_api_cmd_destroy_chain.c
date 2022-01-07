
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_api_cmd_chain {int num_cells; } ;


 int api_chain_free (struct hinic_api_cmd_chain*) ;
 int api_cmd_chain_hw_clean (struct hinic_api_cmd_chain*) ;
 int api_cmd_destroy_cells (struct hinic_api_cmd_chain*,int ) ;

__attribute__((used)) static void api_cmd_destroy_chain(struct hinic_api_cmd_chain *chain)
{
 api_cmd_chain_hw_clean(chain);
 api_cmd_destroy_cells(chain, chain->num_cells);
 api_chain_free(chain);
}
