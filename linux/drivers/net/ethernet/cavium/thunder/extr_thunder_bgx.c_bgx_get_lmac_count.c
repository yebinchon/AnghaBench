
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int lmac_count; } ;


 struct bgx* get_bgx (int,int) ;

int bgx_get_lmac_count(int node, int bgx_idx)
{
 struct bgx *bgx;

 bgx = get_bgx(node, bgx_idx);
 if (bgx)
  return bgx->lmac_count;

 return 0;
}
