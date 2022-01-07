
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt {int flags; scalar_t__ wol; } ;


 int BNXT_FLAG_WOL_CAP ;
 int BNXT_PF (struct bnxt*) ;
 int bnxt_hwrm_get_wol_fltrs (struct bnxt*,int) ;

__attribute__((used)) static void bnxt_get_wol_settings(struct bnxt *bp)
{
 u16 handle = 0;

 bp->wol = 0;
 if (!BNXT_PF(bp) || !(bp->flags & BNXT_FLAG_WOL_CAP))
  return;

 do {
  handle = bnxt_hwrm_get_wol_fltrs(bp, handle);
 } while (handle && handle != 0xffff);
}
