
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int max; int bmap; } ;


 int bitmap_weight (int ,int) ;

int rvu_rsrc_free_count(struct rsrc_bmap *rsrc)
{
 int used;

 if (!rsrc->bmap)
  return 0;

 used = bitmap_weight(rsrc->bmap, rsrc->max);
 return (rsrc->max - used);
}
