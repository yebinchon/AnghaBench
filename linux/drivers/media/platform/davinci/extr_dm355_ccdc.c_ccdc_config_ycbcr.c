
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int width; } ;
struct ccdc_params_ycbcr {int pix_fmt; int frm_fmt; int fid_pol; int hd_pol; int vd_pol; int pix_order; scalar_t__ buf_type; TYPE_1__ win; scalar_t__ bt656_enable; } ;
struct TYPE_4__ {int dev; struct ccdc_params_ycbcr ycbcr; } ;


 int CCDCFG ;
 scalar_t__ CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_CCDCFG_FIDMD_NO_LATCH_VSYNC ;
 int CCDC_DATA_PACK_ENABLE ;
 int CCDC_FID_POL_MASK ;
 int CCDC_FID_POL_SHIFT ;
 int CCDC_FRM_FMT_MASK ;
 int CCDC_FRM_FMT_SHIFT ;
 int CCDC_HD_POL_MASK ;
 int CCDC_HD_POL_SHIFT ;
 int CCDC_INPUT_MODE_MASK ;
 int CCDC_INPUT_MODE_SHIFT ;
 int CCDC_LATCH_ON_VSYNC_DISABLE ;
 int CCDC_REC656IF_BT656_EN ;
 int CCDC_SDOFST_FIELD_INTERLEAVED ;
 int CCDC_VD_POL_MASK ;
 int CCDC_VD_POL_NEGATIVE ;
 int CCDC_VD_POL_SHIFT ;
 int CCDC_Y8POS_SHIFT ;
 int HSIZE ;
 int MODESET ;
 int REC656IF ;
 int SDOFST ;
 TYPE_2__ ccdc_cfg ;
 int ccdc_restore_defaults () ;
 int ccdc_setwin (TYPE_1__*,int,int) ;
 int dev_dbg (int ,char*) ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_ycbcr(void)
{
 struct ccdc_params_ycbcr *params = &ccdc_cfg.ycbcr;
 u32 temp;


 dev_dbg(ccdc_cfg.dev, "\nStarting ccdc_config_ycbcr...");
 ccdc_restore_defaults();


 temp = (((params->pix_fmt & CCDC_INPUT_MODE_MASK) <<
  CCDC_INPUT_MODE_SHIFT) |
  ((params->frm_fmt & CCDC_FRM_FMT_MASK) <<
  CCDC_FRM_FMT_SHIFT));


 if (params->bt656_enable) {
  regw(CCDC_REC656IF_BT656_EN, REC656IF);




  temp |= CCDC_VD_POL_NEGATIVE;
 } else {
  temp |= (((params->fid_pol & CCDC_FID_POL_MASK) <<
   CCDC_FID_POL_SHIFT) |
   ((params->hd_pol & CCDC_HD_POL_MASK) <<
   CCDC_HD_POL_SHIFT) |
   ((params->vd_pol & CCDC_VD_POL_MASK) <<
   CCDC_VD_POL_SHIFT));
 }


 temp |= CCDC_DATA_PACK_ENABLE;

 regw(temp, MODESET);


 ccdc_setwin(&params->win, params->frm_fmt, 2);


 temp = (params->pix_order << CCDC_Y8POS_SHIFT);
 temp |= CCDC_LATCH_ON_VSYNC_DISABLE | CCDC_CCDCFG_FIDMD_NO_LATCH_VSYNC;
 regw(temp, CCDCFG);






 regw(((params->win.width * 2 + 31) >> 5), HSIZE);


 if (params->buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED) {

  regw(CCDC_SDOFST_FIELD_INTERLEAVED, SDOFST);
 }

 dev_dbg(ccdc_cfg.dev, "\nEnd of ccdc_config_ycbcr...\n");
}
