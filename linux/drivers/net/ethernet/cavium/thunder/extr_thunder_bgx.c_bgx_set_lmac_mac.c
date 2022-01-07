
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bgx {TYPE_1__* lmac; } ;
struct TYPE_2__ {int mac; } ;


 int ether_addr_copy (int ,int const*) ;
 struct bgx* get_bgx (int,int) ;

void bgx_set_lmac_mac(int node, int bgx_idx, int lmacid, const u8 *mac)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);

 if (!bgx)
  return;

 ether_addr_copy(bgx->lmac[lmacid].mac, mac);
}
