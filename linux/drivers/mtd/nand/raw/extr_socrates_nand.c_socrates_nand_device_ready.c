
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socrates_nand_host {int io_base; } ;
struct nand_chip {int dummy; } ;


 int FPGA_NAND_BUSY ;
 int in_be32 (int ) ;
 struct socrates_nand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int socrates_nand_device_ready(struct nand_chip *nand_chip)
{
 struct socrates_nand_host *host = nand_get_controller_data(nand_chip);

 if (in_be32(host->io_base) & FPGA_NAND_BUSY)
  return 0;
 return 1;
}
