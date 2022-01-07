
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct spi_nor {scalar_t__ program_opcode; scalar_t__ sst_write_second; int write_proto; int addr_width; } ;
struct TYPE_6__ {scalar_t__ nbytes; int buswidth; } ;
struct TYPE_5__ {int buswidth; } ;
struct TYPE_4__ {int buswidth; } ;
struct spi_mem_op {TYPE_3__ addr; TYPE_2__ data; TYPE_1__ cmd; } ;
typedef int ssize_t ;
typedef int loff_t ;


 scalar_t__ SPINOR_OP_AAI_WP ;
 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_ADDR (int ,int ,int) ;
 int SPI_MEM_OP_CMD (scalar_t__,int) ;
 int SPI_MEM_OP_DATA_OUT (size_t,int const*,int) ;
 int SPI_MEM_OP_NO_DUMMY ;
 int spi_nor_get_protocol_addr_nbits (int ) ;
 int spi_nor_get_protocol_data_nbits (int ) ;
 int spi_nor_get_protocol_inst_nbits (int ) ;
 int spi_nor_spimem_xfer_data (struct spi_nor*,struct spi_mem_op*) ;

__attribute__((used)) static ssize_t spi_nor_spimem_write_data(struct spi_nor *nor, loff_t to,
      size_t len, const u8 *buf)
{
 struct spi_mem_op op =
  SPI_MEM_OP(SPI_MEM_OP_CMD(nor->program_opcode, 1),
      SPI_MEM_OP_ADDR(nor->addr_width, to, 1),
      SPI_MEM_OP_NO_DUMMY,
      SPI_MEM_OP_DATA_OUT(len, buf, 1));

 op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
 op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
 op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);

 if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
  op.addr.nbytes = 0;

 return spi_nor_spimem_xfer_data(nor, &op);
}
