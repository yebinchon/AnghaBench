
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct cgx {int lmac_count; } ;


 int CGXX_GMP_PCS_MRX_CTL ;
 int CGXX_GMP_PCS_MRX_CTL_LBK ;
 int CGXX_SPUX_CONTROL1 ;
 int CGXX_SPUX_CONTROL1_LBK ;
 int ENODEV ;
 scalar_t__ LMAC_MODE_QSGMII ;
 scalar_t__ LMAC_MODE_SGMII ;
 scalar_t__ cgx_get_lmac_type (struct cgx*,int) ;
 int cgx_read (struct cgx*,int,int ) ;
 int cgx_write (struct cgx*,int,int ,int ) ;

int cgx_lmac_internal_loopback(void *cgxd, int lmac_id, bool enable)
{
 struct cgx *cgx = cgxd;
 u8 lmac_type;
 u64 cfg;

 if (!cgx || lmac_id >= cgx->lmac_count)
  return -ENODEV;

 lmac_type = cgx_get_lmac_type(cgx, lmac_id);
 if (lmac_type == LMAC_MODE_SGMII || lmac_type == LMAC_MODE_QSGMII) {
  cfg = cgx_read(cgx, lmac_id, CGXX_GMP_PCS_MRX_CTL);
  if (enable)
   cfg |= CGXX_GMP_PCS_MRX_CTL_LBK;
  else
   cfg &= ~CGXX_GMP_PCS_MRX_CTL_LBK;
  cgx_write(cgx, lmac_id, CGXX_GMP_PCS_MRX_CTL, cfg);
 } else {
  cfg = cgx_read(cgx, lmac_id, CGXX_SPUX_CONTROL1);
  if (enable)
   cfg |= CGXX_SPUX_CONTROL1_LBK;
  else
   cfg &= ~CGXX_SPUX_CONTROL1_LBK;
  cgx_write(cgx, lmac_id, CGXX_SPUX_CONTROL1, cfg);
 }
 return 0;
}
