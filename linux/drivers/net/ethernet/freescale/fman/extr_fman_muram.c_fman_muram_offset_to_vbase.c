
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muram_info {scalar_t__ vbase; } ;



unsigned long fman_muram_offset_to_vbase(struct muram_info *muram,
      unsigned long offset)
{
 return offset + (unsigned long)muram->vbase;
}
