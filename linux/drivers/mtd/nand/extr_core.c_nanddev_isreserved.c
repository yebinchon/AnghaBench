
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_pos {int dummy; } ;
struct nand_device {int dummy; } ;


 int NAND_BBT_BLOCK_RESERVED ;
 int nanddev_bbt_get_block_status (struct nand_device*,unsigned int) ;
 int nanddev_bbt_is_initialized (struct nand_device*) ;
 unsigned int nanddev_bbt_pos_to_entry (struct nand_device*,struct nand_pos const*) ;

bool nanddev_isreserved(struct nand_device *nand, const struct nand_pos *pos)
{
 unsigned int entry;
 int status;

 if (!nanddev_bbt_is_initialized(nand))
  return 0;


 entry = nanddev_bbt_pos_to_entry(nand, pos);
 status = nanddev_bbt_get_block_status(nand, entry);
 return status == NAND_BBT_BLOCK_RESERVED;
}
