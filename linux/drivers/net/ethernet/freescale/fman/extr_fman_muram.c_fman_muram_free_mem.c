
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muram_info {int pool; } ;


 unsigned long fman_muram_offset_to_vbase (struct muram_info*,unsigned long) ;
 int gen_pool_free (int ,unsigned long,size_t) ;

void fman_muram_free_mem(struct muram_info *muram, unsigned long offset,
    size_t size)
{
 unsigned long addr = fman_muram_offset_to_vbase(muram, offset);

 gen_pool_free(muram->pool, addr, size);
}
