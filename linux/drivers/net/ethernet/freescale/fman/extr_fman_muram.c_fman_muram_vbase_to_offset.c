
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muram_info {scalar_t__ vbase; } ;



__attribute__((used)) static unsigned long fman_muram_vbase_to_offset(struct muram_info *muram,
      unsigned long vaddr)
{
 return vaddr - (unsigned long)muram->vbase;
}
