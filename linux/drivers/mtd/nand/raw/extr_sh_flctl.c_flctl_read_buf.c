
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh_flctl {size_t index; int * done_buff; } ;
struct nand_chip {int dummy; } ;


 int memcpy (int *,int *,int) ;
 struct sh_flctl* mtd_to_flctl (int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void flctl_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
{
 struct sh_flctl *flctl = mtd_to_flctl(nand_to_mtd(chip));

 memcpy(buf, &flctl->done_buff[flctl->index], len);
 flctl->index += len;
}
