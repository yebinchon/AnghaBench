
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NFTLrecord {unsigned int nb_blocks; unsigned int* ReplUnitTable; } ;


 unsigned int BLOCK_NIL ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static int calc_chain_length(struct NFTLrecord *nftl, unsigned int first_block)
{
 unsigned int length = 0, block = first_block;

 for (;;) {
  length++;


  if (length >= nftl->nb_blocks) {
   printk("nftl: length too long %d !\n", length);
   break;
  }

  block = nftl->ReplUnitTable[block];
  if (!(block == BLOCK_NIL || block < nftl->nb_blocks))
   printk("incorrect ReplUnitTable[] : %d\n", block);
  if (block == BLOCK_NIL || block >= nftl->nb_blocks)
   break;
 }
 return length;
}
