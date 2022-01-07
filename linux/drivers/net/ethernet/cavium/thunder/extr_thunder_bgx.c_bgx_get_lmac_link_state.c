
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {int last_speed; int last_duplex; int link_up; int lmac_type; } ;
struct bgx_link_status {int speed; int duplex; int link_up; int mac_type; } ;
struct bgx {struct lmac* lmac; } ;


 struct bgx* get_bgx (int,int) ;

void bgx_get_lmac_link_state(int node, int bgx_idx, int lmacid, void *status)
{
 struct bgx_link_status *link = (struct bgx_link_status *)status;
 struct bgx *bgx;
 struct lmac *lmac;

 bgx = get_bgx(node, bgx_idx);
 if (!bgx)
  return;

 lmac = &bgx->lmac[lmacid];
 link->mac_type = lmac->lmac_type;
 link->link_up = lmac->link_up;
 link->duplex = lmac->last_duplex;
 link->speed = lmac->last_speed;
}
