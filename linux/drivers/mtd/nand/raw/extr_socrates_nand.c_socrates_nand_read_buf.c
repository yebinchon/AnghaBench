
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct socrates_nand_host {int io_base; } ;
struct nand_chip {int dummy; } ;


 int FPGA_NAND_CMD_READ ;
 int FPGA_NAND_DATA_SHIFT ;
 int FPGA_NAND_ENABLE ;
 int in_be32 (int ) ;
 struct socrates_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int out_be32 (int ,int) ;

__attribute__((used)) static void socrates_nand_read_buf(struct nand_chip *this, uint8_t *buf,
       int len)
{
 int i;
 struct socrates_nand_host *host = nand_get_controller_data(this);
 uint32_t val;

 val = FPGA_NAND_ENABLE | FPGA_NAND_CMD_READ;

 out_be32(host->io_base, val);
 for (i = 0; i < len; i++) {
  buf[i] = (in_be32(host->io_base) >>
    FPGA_NAND_DATA_SHIFT) & 0xff;
 }
}
