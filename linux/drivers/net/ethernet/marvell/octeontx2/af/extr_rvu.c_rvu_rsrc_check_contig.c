
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int max; int bmap; } ;


 int bitmap_find_next_zero_area (int ,int,int ,int,int ) ;

bool rvu_rsrc_check_contig(struct rsrc_bmap *rsrc, int nrsrc)
{
 int start;

 if (!rsrc->bmap)
  return 0;

 start = bitmap_find_next_zero_area(rsrc->bmap, rsrc->max, 0, nrsrc, 0);
 if (start >= rsrc->max)
  return 0;

 return 1;
}
