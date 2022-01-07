
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sg_mapping_iter {int dummy; } ;


 scalar_t__ likely (int ) ;
 int sg_dwiter_get_next_block (struct sg_mapping_iter*,int **) ;
 int sg_dwiter_write_slow (struct sg_mapping_iter*,int ) ;

void cb710_sg_dwiter_write_next_block(struct sg_mapping_iter *miter, uint32_t data)
{
 uint32_t *ptr = ((void*)0);

 if (likely(sg_dwiter_get_next_block(miter, &ptr))) {
  if (ptr)
   *ptr = data;
  else
   return;
 } else
  sg_dwiter_write_slow(miter, data);
}
