
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int max; int bmap; } ;


 int EINVAL ;
 int ENOSPC ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;

int rvu_alloc_rsrc(struct rsrc_bmap *rsrc)
{
 int id;

 if (!rsrc->bmap)
  return -EINVAL;

 id = find_first_zero_bit(rsrc->bmap, rsrc->max);
 if (id >= rsrc->max)
  return -ENOSPC;

 __set_bit(id, rsrc->bmap);

 return id;
}
