
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hinic_api_cmd_chain {scalar_t__ chain_type; } ;
typedef enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;


 int EINVAL ;
 scalar_t__ HINIC_API_CMD_WRITE_TO_MGMT_CPU ;
 int api_cmd (struct hinic_api_cmd_chain*,int,int *,int ) ;

int hinic_api_cmd_write(struct hinic_api_cmd_chain *chain,
   enum hinic_node_id dest, u8 *cmd, u16 size)
{

 if (chain->chain_type == HINIC_API_CMD_WRITE_TO_MGMT_CPU)
  return api_cmd(chain, dest, cmd, size);

 return -EINVAL;
}
