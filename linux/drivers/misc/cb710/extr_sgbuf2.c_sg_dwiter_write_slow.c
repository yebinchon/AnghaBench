
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sg_mapping_iter {scalar_t__ consumed; int addr; scalar_t__ length; } ;


 int memcpy (int ,void*,size_t) ;
 size_t min (scalar_t__,size_t) ;
 scalar_t__ sg_dwiter_next (struct sg_mapping_iter*) ;

__attribute__((used)) static void sg_dwiter_write_slow(struct sg_mapping_iter *miter, uint32_t data)
{
 size_t len, left = 4;
 void *addr = &data;

 do {
  len = min(miter->length - miter->consumed, left);
  memcpy(miter->addr, addr, len);
  miter->consumed += len;
  left -= len;
  if (!left)
   return;
  addr += len;
 } while (sg_dwiter_next(miter));
}
