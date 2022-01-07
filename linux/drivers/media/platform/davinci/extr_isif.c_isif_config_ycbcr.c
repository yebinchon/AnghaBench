
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int width; } ;
struct isif_ycbcr_config {int pix_fmt; int frm_fmt; int fid_pol; int hd_pol; int vd_pol; int pix_order; scalar_t__ buf_type; TYPE_1__ win; } ;
struct TYPE_4__ {int if_type; int dev; struct isif_ycbcr_config ycbcr; } ;


 int CCDCFG ;
 scalar_t__ CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_PIXFMT_YCBCR_16BIT ;
 int CCDC_PIXFMT_YCBCR_8BIT ;
 int EINVAL ;
 int HSIZE ;
 int ISIF_BW656_ENABLE ;
 int ISIF_DATA_PACK8 ;
 int ISIF_FID_POL_SHIFT ;
 int ISIF_FRM_FMT_SHIFT ;
 int ISIF_HD_POL_SHIFT ;
 int ISIF_INPUT_SHIFT ;
 int ISIF_PIX_ORDER_SHIFT ;
 int ISIF_VD_POL_SHIFT ;
 int ISIF_YCINSWP_YCBCR ;
 int MODESET ;
 int REC656IF ;
 int SDOFST ;



 int VPFE_PINPOL_NEGATIVE ;


 int dev_dbg (int ,char*) ;
 TYPE_2__ isif_cfg ;
 int isif_setwin (TYPE_1__*,int,int) ;
 int regw (int,int ) ;

__attribute__((used)) static int isif_config_ycbcr(void)
{
 struct isif_ycbcr_config *params = &isif_cfg.ycbcr;
 u32 modeset = 0, ccdcfg = 0;

 dev_dbg(isif_cfg.dev, "\nStarting isif_config_ycbcr...");


 modeset = modeset | (params->pix_fmt << ISIF_INPUT_SHIFT) |
    (params->frm_fmt << ISIF_FRM_FMT_SHIFT) |
    (params->fid_pol << ISIF_FID_POL_SHIFT) |
    (params->hd_pol << ISIF_HD_POL_SHIFT) |
    (params->vd_pol << ISIF_VD_POL_SHIFT);


 switch (isif_cfg.if_type) {
 case 131:
  if (params->pix_fmt != CCDC_PIXFMT_YCBCR_8BIT) {
   dev_dbg(isif_cfg.dev, "Invalid pix_fmt(input mode)\n");
   return -EINVAL;
  }
  modeset |= (VPFE_PINPOL_NEGATIVE << ISIF_VD_POL_SHIFT);
  regw(3, REC656IF);
  ccdcfg = ccdcfg | ISIF_DATA_PACK8 | ISIF_YCINSWP_YCBCR;
  break;
 case 130:
  if (params->pix_fmt != CCDC_PIXFMT_YCBCR_8BIT) {
   dev_dbg(isif_cfg.dev, "Invalid pix_fmt(input mode)\n");
   return -EINVAL;
  }

  regw(3, REC656IF);

  ccdcfg = ccdcfg | ISIF_DATA_PACK8 | ISIF_YCINSWP_YCBCR |
   ISIF_BW656_ENABLE;
  break;
 case 132:
  if (params->pix_fmt != CCDC_PIXFMT_YCBCR_16BIT) {
   dev_dbg(isif_cfg.dev, "Invalid pix_fmt(input mode)\n");
   return -EINVAL;
  }
  regw(3, REC656IF);
  break;

 case 128:
  ccdcfg |= ISIF_DATA_PACK8;
  ccdcfg |= ISIF_YCINSWP_YCBCR;
  if (params->pix_fmt != CCDC_PIXFMT_YCBCR_8BIT) {
   dev_dbg(isif_cfg.dev, "Invalid pix_fmt(input mode)\n");
   return -EINVAL;
  }
  break;
 case 129:
  if (params->pix_fmt != CCDC_PIXFMT_YCBCR_16BIT) {
   dev_dbg(isif_cfg.dev, "Invalid pix_fmt(input mode)\n");
   return -EINVAL;
  }
  break;
 default:

  dev_dbg(isif_cfg.dev, "Invalid interface type\n");
  return -EINVAL;
 }

 regw(modeset, MODESET);


 ccdcfg |= params->pix_order << ISIF_PIX_ORDER_SHIFT;

 regw(ccdcfg, CCDCFG);


 if ((isif_cfg.if_type == 132) ||
     (isif_cfg.if_type == 129))
  isif_setwin(&params->win, params->frm_fmt, 1);
 else
  isif_setwin(&params->win, params->frm_fmt, 2);






 regw(((((params->win.width * 2) + 31) & 0xffffffe0) >> 5), HSIZE);


 if ((params->frm_fmt == CCDC_FRMFMT_INTERLACED) &&
     (params->buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED))

  regw(0x00000249, SDOFST);

 return 0;
}
