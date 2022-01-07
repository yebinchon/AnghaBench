
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct spi_nor {int addr_width; int read_dummy; void* read_opcode; } ;


 void* SPINOR_OP_RDSFDP ;
 int spi_nor_read_raw (struct spi_nor*,int ,size_t,void*) ;

__attribute__((used)) static int spi_nor_read_sfdp(struct spi_nor *nor, u32 addr,
        size_t len, void *buf)
{
 u8 addr_width, read_opcode, read_dummy;
 int ret;

 read_opcode = nor->read_opcode;
 addr_width = nor->addr_width;
 read_dummy = nor->read_dummy;

 nor->read_opcode = SPINOR_OP_RDSFDP;
 nor->addr_width = 3;
 nor->read_dummy = 8;

 ret = spi_nor_read_raw(nor, addr, len, buf);

 nor->read_opcode = read_opcode;
 nor->addr_width = addr_width;
 nor->read_dummy = read_dummy;

 return ret;
}
