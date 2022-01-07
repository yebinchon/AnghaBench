
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bgx {int dummy; } ;


 scalar_t__ BGX_CMRX_TX_STAT0 ;
 int bgx_reg_read (struct bgx*,int,scalar_t__) ;
 struct bgx* get_bgx (int,int) ;

u64 bgx_get_tx_stats(int node, int bgx_idx, int lmac, int idx)
{
 struct bgx *bgx;

 bgx = get_bgx(node, bgx_idx);
 if (!bgx)
  return 0;

 return bgx_reg_read(bgx, lmac, BGX_CMRX_TX_STAT0 + (idx * 8));
}
