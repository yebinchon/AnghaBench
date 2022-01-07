
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sg_mapping_iter {size_t length; size_t consumed; int * addr; } ;


 scalar_t__ likely (int) ;
 int needs_unaligned_copy (int *) ;
 scalar_t__ sg_dwiter_is_at_end (struct sg_mapping_iter*) ;

__attribute__((used)) static bool sg_dwiter_get_next_block(struct sg_mapping_iter *miter, uint32_t **ptr)
{
 size_t len;

 if (sg_dwiter_is_at_end(miter))
  return 1;

 len = miter->length - miter->consumed;

 if (likely(len >= 4 && !needs_unaligned_copy(
   miter->addr + miter->consumed))) {
  *ptr = miter->addr + miter->consumed;
  miter->consumed += 4;
  return 1;
 }

 return 0;
}
