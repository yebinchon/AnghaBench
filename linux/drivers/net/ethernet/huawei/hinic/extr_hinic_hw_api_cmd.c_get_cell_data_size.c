
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum hinic_api_cmd_chain_type { ____Placeholder_hinic_api_cmd_chain_type } hinic_api_cmd_chain_type ;


 int ALIGN (scalar_t__,int ) ;
 int API_CMD_CELL_ALIGNMENT ;
 scalar_t__ API_CMD_CELL_DATA_ADDR_SIZE ;
 scalar_t__ API_CMD_CELL_DESC_SIZE ;


__attribute__((used)) static u8 get_cell_data_size(enum hinic_api_cmd_chain_type type)
{
 u8 cell_data_size = 0;

 switch (type) {
 case 128:
  cell_data_size = ALIGN(API_CMD_CELL_DESC_SIZE +
           API_CMD_CELL_DATA_ADDR_SIZE,
           API_CMD_CELL_ALIGNMENT);
  break;
 default:
  break;
 }

 return cell_data_size;
}
