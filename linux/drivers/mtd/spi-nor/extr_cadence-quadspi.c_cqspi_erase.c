
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int (* write_reg ) (struct spi_nor*,int ,int *,int ) ;int erase_opcode; } ;
typedef int loff_t ;


 int SPINOR_OP_WREN ;
 int cqspi_command_write_addr (struct spi_nor*,int ,int ) ;
 int cqspi_set_protocol (struct spi_nor*,int ) ;
 int stub1 (struct spi_nor*,int ,int *,int ) ;

__attribute__((used)) static int cqspi_erase(struct spi_nor *nor, loff_t offs)
{
 int ret;

 ret = cqspi_set_protocol(nor, 0);
 if (ret)
  return ret;


 ret = nor->write_reg(nor, SPINOR_OP_WREN, ((void*)0), 0);
 if (ret)
  return ret;


 ret = cqspi_command_write_addr(nor, nor->erase_opcode, offs);
 if (ret)
  return ret;

 return 0;
}
