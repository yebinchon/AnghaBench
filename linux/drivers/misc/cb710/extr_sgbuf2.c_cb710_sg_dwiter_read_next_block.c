
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sg_mapping_iter {int dummy; } ;


 scalar_t__ likely (int ) ;
 int sg_dwiter_get_next_block (struct sg_mapping_iter*,int **) ;
 int sg_dwiter_read_buffer (struct sg_mapping_iter*) ;

uint32_t cb710_sg_dwiter_read_next_block(struct sg_mapping_iter *miter)
{
 uint32_t *ptr = ((void*)0);

 if (likely(sg_dwiter_get_next_block(miter, &ptr)))
  return ptr ? *ptr : 0;

 return sg_dwiter_read_buffer(miter);
}
