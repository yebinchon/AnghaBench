
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spi_nor_read_command {int num_mode_clocks; int num_wait_states; int proto; int opcode; } ;
struct spi_nor {int dummy; } ;
struct TYPE_8__ {int buswidth; int nbytes; } ;
struct TYPE_7__ {int buswidth; } ;
struct TYPE_6__ {int buswidth; } ;
struct TYPE_5__ {int buswidth; } ;
struct spi_mem_op {TYPE_4__ dummy; TYPE_3__ addr; TYPE_2__ data; TYPE_1__ cmd; } ;


 struct spi_mem_op SPI_MEM_OP (int ,int ,int ,int ) ;
 int SPI_MEM_OP_ADDR (int,int ,int) ;
 int SPI_MEM_OP_CMD (int ,int) ;
 int SPI_MEM_OP_DATA_IN (int ,int *,int) ;
 int SPI_MEM_OP_DUMMY (int ,int) ;
 int spi_nor_get_protocol_addr_nbits (int ) ;
 int spi_nor_get_protocol_data_nbits (int ) ;
 int spi_nor_get_protocol_inst_nbits (int ) ;
 int spi_nor_spimem_check_op (struct spi_nor*,struct spi_mem_op*) ;

__attribute__((used)) static int spi_nor_spimem_check_readop(struct spi_nor *nor,
           const struct spi_nor_read_command *read)
{
 struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(read->opcode, 1),
       SPI_MEM_OP_ADDR(3, 0, 1),
       SPI_MEM_OP_DUMMY(0, 1),
       SPI_MEM_OP_DATA_IN(0, ((void*)0), 1));

 op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(read->proto);
 op.addr.buswidth = spi_nor_get_protocol_addr_nbits(read->proto);
 op.data.buswidth = spi_nor_get_protocol_data_nbits(read->proto);
 op.dummy.buswidth = op.addr.buswidth;
 op.dummy.nbytes = (read->num_mode_clocks + read->num_wait_states) *
     op.dummy.buswidth / 8;

 return spi_nor_spimem_check_op(nor, &op);
}
