
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct spi_nor {int read_dummy; int read_proto; int addr_width; int read_opcode; } ;
struct TYPE_8__ {int buswidth; int nbytes; } ;
struct TYPE_7__ {int buswidth; } ;
struct TYPE_6__ {int buswidth; } ;
struct TYPE_5__ {int buswidth; } ;
struct spi_mem_op {TYPE_4__ dummy; TYPE_3__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
typedef int ssize_t ;
typedef int loff_t ;


 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_ADDR (int ,int ,int) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_DATA_IN (size_t,int *,int) ;
 int SPI_MEM_OP_DUMMY (int,int) ;
 int spi_nor_get_protocol_addr_nbits (int ) ;
 int spi_nor_get_protocol_data_nbits (int ) ;
 int spi_nor_get_protocol_inst_nbits (int ) ;
 int spi_nor_spimem_xfer_data (struct spi_nor*,struct spi_mem_op*) ;

__attribute__((used)) static ssize_t spi_nor_spimem_read_data(struct spi_nor *nor, loff_t from,
     size_t len, u8 *buf)
{
 struct spi_mem_op op =
  SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
      SPI_MEM_OP_ADDR(nor->addr_width, from, 1),
      SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
      SPI_MEM_OP_DATA_IN(len, buf, 1));


 op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
 op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
 op.dummy.buswidth = op.addr.buswidth;
 op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);


 op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;

 return spi_nor_spimem_xfer_data(nor, &op);
}
