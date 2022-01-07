
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {size_t length; scalar_t__ offset; } ;


 size_t min (size_t,size_t) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 int sg_mark_end (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,size_t,scalar_t__) ;

__attribute__((used)) static size_t msb_sg_copy(struct scatterlist *sg_from,
 struct scatterlist *sg_to, int to_nents, size_t offset, size_t len)
{
 size_t copied = 0;

 while (offset > 0) {
  if (offset >= sg_from->length) {
   if (sg_is_last(sg_from))
    return 0;

   offset -= sg_from->length;
   sg_from = sg_next(sg_from);
   continue;
  }

  copied = min(len, sg_from->length - offset);
  sg_set_page(sg_to, sg_page(sg_from),
   copied, sg_from->offset + offset);

  len -= copied;
  offset = 0;

  if (sg_is_last(sg_from) || !len)
   goto out;

  sg_to = sg_next(sg_to);
  to_nents--;
  sg_from = sg_next(sg_from);
 }

 while (len > sg_from->length && to_nents--) {
  len -= sg_from->length;
  copied += sg_from->length;

  sg_set_page(sg_to, sg_page(sg_from),
    sg_from->length, sg_from->offset);

  if (sg_is_last(sg_from) || !len)
   goto out;

  sg_from = sg_next(sg_from);
  sg_to = sg_next(sg_to);
 }

 if (len && to_nents) {
  sg_set_page(sg_to, sg_page(sg_from), len, sg_from->offset);
  copied += len;
 }
out:
 sg_mark_end(sg_to);
 return copied;
}
