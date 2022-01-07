
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bgx {TYPE_1__* lmac; } ;
struct TYPE_2__ {int const* mac; } ;


 struct bgx* get_bgx (int,int) ;

const u8 *bgx_get_lmac_mac(int node, int bgx_idx, int lmacid)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);

 if (bgx)
  return bgx->lmac[lmacid].mac;

 return ((void*)0);
}
