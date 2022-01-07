
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsrc_bmap {int bmap; } ;


 int __clear_bit (int,int ) ;

void rvu_free_rsrc(struct rsrc_bmap *rsrc, int id)
{
 if (!rsrc->bmap)
  return;

 __clear_bit(id, rsrc->bmap);
}
