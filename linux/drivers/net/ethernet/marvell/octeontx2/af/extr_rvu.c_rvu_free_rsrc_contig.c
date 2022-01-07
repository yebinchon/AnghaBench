
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int max; int bmap; } ;


 int bitmap_clear (int ,int,int) ;

__attribute__((used)) static void rvu_free_rsrc_contig(struct rsrc_bmap *rsrc, int nrsrc, int start)
{
 if (!rsrc->bmap)
  return;
 if (start >= rsrc->max)
  return;

 bitmap_clear(rsrc->bmap, start, nrsrc);
}
