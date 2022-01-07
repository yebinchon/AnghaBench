
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;


 int DATA_SZ ;
 int HINIC_API_CMD_CELL_CTRL_SET (int ,int ) ;
 int RD_DMA_ATTR ;
 int RD_DMA_ATTR_DEFAULT ;
 int SIZE_8BYTES (int ) ;
 int WR_DMA_ATTR ;
 int WR_DMA_ATTR_DEFAULT ;
 int XOR_CHKSUM ;
 int cpu_to_be64 (int) ;
 int xor_chksum_set (int*) ;

__attribute__((used)) static void prepare_cell_ctrl(u64 *cell_ctrl, u16 data_size)
{
 u8 chksum;
 u64 ctrl;

 ctrl = HINIC_API_CMD_CELL_CTRL_SET(SIZE_8BYTES(data_size), DATA_SZ) |
  HINIC_API_CMD_CELL_CTRL_SET(RD_DMA_ATTR_DEFAULT, RD_DMA_ATTR) |
  HINIC_API_CMD_CELL_CTRL_SET(WR_DMA_ATTR_DEFAULT, WR_DMA_ATTR);

 chksum = xor_chksum_set(&ctrl);

 ctrl |= HINIC_API_CMD_CELL_CTRL_SET(chksum, XOR_CHKSUM);


 *cell_ctrl = cpu_to_be64(ctrl);
}
