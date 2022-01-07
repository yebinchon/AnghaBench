
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int bmap; int max; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;

int rvu_alloc_bitmap(struct rsrc_bmap *rsrc)
{
 rsrc->bmap = kcalloc(BITS_TO_LONGS(rsrc->max),
        sizeof(long), GFP_KERNEL);
 if (!rsrc->bmap)
  return -ENOMEM;
 return 0;
}
