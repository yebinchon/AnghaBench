
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int left; unsigned int width; unsigned int top; unsigned int height; } ;
struct TYPE_4__ {unsigned int gamma_wd; scalar_t__ enable; } ;
struct ccdc_config_params_raw {unsigned int data_sz; TYPE_1__ alaw; int blk_comp; int blk_clamp; } ;
struct ccdc_params_raw {unsigned int vd_pol; unsigned int hd_pol; unsigned int fid_pol; unsigned int frm_fmt; unsigned int pix_fmt; TYPE_2__ win; scalar_t__ image_invert_enable; struct ccdc_config_params_raw config_params; } ;
struct TYPE_6__ {int dev; struct ccdc_params_raw bayer; } ;


 unsigned int CCDC_32BYTE_ALIGN_VAL ;
 int CCDC_ALAW ;
 unsigned int CCDC_ALAW_ENABLE ;
 unsigned int CCDC_ALAW_GAMMA_WD_MASK ;
 int CCDC_CCDCFG ;
 int CCDC_COLPTN ;
 unsigned int CCDC_COLPTN_VAL ;
 unsigned int CCDC_DATA_10BITS ;
 unsigned int CCDC_DATA_8BITS ;
 unsigned int CCDC_DATA_PACK_ENABLE ;
 unsigned int CCDC_DATA_SZ_MASK ;
 unsigned int CCDC_DATA_SZ_SHIFT ;
 unsigned int CCDC_DISABLE_VIDEO_PORT ;
 unsigned int CCDC_FID_POL_MASK ;
 unsigned int CCDC_FID_POL_SHIFT ;
 int CCDC_FMTCFG ;
 unsigned int CCDC_FMTCFG_VPIN_MASK ;
 unsigned int CCDC_FMTCFG_VPIN_SHIFT ;
 int CCDC_FMT_HORZ ;
 unsigned int CCDC_FMT_HORZ_FMTLNH_MASK ;
 unsigned int CCDC_FMT_HORZ_FMTSPH_MASK ;
 unsigned int CCDC_FMT_HORZ_FMTSPH_SHIFT ;
 int CCDC_FMT_VERT ;
 unsigned int CCDC_FMT_VERT_FMTLNV_MASK ;
 unsigned int CCDC_FMT_VERT_FMTSLV_MASK ;
 unsigned int CCDC_FMT_VERT_FMTSLV_SHIFT ;
 unsigned int CCDC_FRMFMT_INTERLACED ;
 unsigned int CCDC_FRMFMT_PROGRESSIVE ;
 unsigned int CCDC_FRM_FMT_MASK ;
 unsigned int CCDC_FRM_FMT_SHIFT ;
 unsigned int CCDC_HD_POL_MASK ;
 unsigned int CCDC_HD_POL_SHIFT ;
 int CCDC_HSIZE_OFF ;
 unsigned int CCDC_HSIZE_OFF_MASK ;
 int CCDC_INTERLACED_HEIGHT_SHIFT ;
 unsigned int CCDC_INTERLACED_IMAGE_INVERT ;
 unsigned int CCDC_INTERLACED_NO_IMAGE_INVERT ;
 unsigned int CCDC_LATCH_ON_VSYNC_DISABLE ;
 unsigned int CCDC_PIX_FMT_MASK ;
 unsigned int CCDC_PIX_FMT_SHIFT ;
 int CCDC_PPC_RAW ;
 unsigned int CCDC_PROGRESSIVE_NO_IMAGE_INVERT ;
 int CCDC_SDOFST ;
 int CCDC_SYN_MODE ;
 unsigned int CCDC_TWO_BYTES_PER_PIXEL ;
 unsigned int CCDC_VDHDEN_ENABLE ;
 unsigned int CCDC_VD_POL_MASK ;
 unsigned int CCDC_VD_POL_SHIFT ;
 int CCDC_VP_OUT ;
 unsigned int CCDC_VP_OUT_HORZ_NUM_MASK ;
 unsigned int CCDC_VP_OUT_HORZ_NUM_SHIFT ;
 unsigned int CCDC_VP_OUT_HORZ_ST_MASK ;
 int CCDC_VP_OUT_VERT_NUM_MASK ;
 int CCDC_VP_OUT_VERT_NUM_SHIFT ;
 unsigned int CCDC_WEN_ENABLE ;
 TYPE_3__ ccdc_cfg ;
 int ccdc_config_black_clamp (int *) ;
 int ccdc_config_black_compense (int *) ;
 int ccdc_readregs () ;
 int ccdc_restore_defaults () ;
 int ccdc_sbl_reset () ;
 int ccdc_setwin (TYPE_2__*,unsigned int,int ) ;
 int dev_dbg (int ,char*,...) ;
 int regw (unsigned int,int ) ;

__attribute__((used)) static void ccdc_config_raw(void)
{
 struct ccdc_params_raw *params = &ccdc_cfg.bayer;
 struct ccdc_config_params_raw *config_params =
    &ccdc_cfg.bayer.config_params;
 unsigned int syn_mode = 0;
 unsigned int val;

 dev_dbg(ccdc_cfg.dev, "\nStarting ccdc_config_raw...");


 ccdc_restore_defaults();


 regw(CCDC_LATCH_ON_VSYNC_DISABLE, CCDC_CCDCFG);
 syn_mode =
  (((params->vd_pol & CCDC_VD_POL_MASK) << CCDC_VD_POL_SHIFT) |
  ((params->hd_pol & CCDC_HD_POL_MASK) << CCDC_HD_POL_SHIFT) |
  ((params->fid_pol & CCDC_FID_POL_MASK) << CCDC_FID_POL_SHIFT) |
  ((params->frm_fmt & CCDC_FRM_FMT_MASK) << CCDC_FRM_FMT_SHIFT) |
  ((config_params->data_sz & CCDC_DATA_SZ_MASK) <<
  CCDC_DATA_SZ_SHIFT) |
  ((params->pix_fmt & CCDC_PIX_FMT_MASK) << CCDC_PIX_FMT_SHIFT) |
  CCDC_WEN_ENABLE | CCDC_VDHDEN_ENABLE);


 if (config_params->alaw.enable) {
  val = ((config_params->alaw.gamma_wd &
        CCDC_ALAW_GAMMA_WD_MASK) | CCDC_ALAW_ENABLE);
  regw(val, CCDC_ALAW);
  dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to ALAW...\n", val);
 }


 ccdc_setwin(&params->win, params->frm_fmt, CCDC_PPC_RAW);


 ccdc_config_black_clamp(&config_params->blk_clamp);


 ccdc_config_black_compense(&config_params->blk_comp);


 if ((config_params->data_sz == CCDC_DATA_8BITS) ||
      config_params->alaw.enable)
  syn_mode |= CCDC_DATA_PACK_ENABLE;


 val = CCDC_DISABLE_VIDEO_PORT;

 if (config_params->data_sz == CCDC_DATA_8BITS)
  val |= (CCDC_DATA_10BITS & CCDC_FMTCFG_VPIN_MASK)
      << CCDC_FMTCFG_VPIN_SHIFT;
 else
  val |= (config_params->data_sz & CCDC_FMTCFG_VPIN_MASK)
      << CCDC_FMTCFG_VPIN_SHIFT;

 regw(val, CCDC_FMTCFG);

 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to FMTCFG...\n", val);

 regw(CCDC_COLPTN_VAL, CCDC_COLPTN);

 dev_dbg(ccdc_cfg.dev, "\nWriting 0xBB11BB11 to COLPTN...\n");




 val = ((params->win.left & CCDC_FMT_HORZ_FMTSPH_MASK) <<
       CCDC_FMT_HORZ_FMTSPH_SHIFT) |
       (params->win.width & CCDC_FMT_HORZ_FMTLNH_MASK);
 regw(val, CCDC_FMT_HORZ);

 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to FMT_HORZ...\n", val);
 val = (params->win.top & CCDC_FMT_VERT_FMTSLV_MASK)
     << CCDC_FMT_VERT_FMTSLV_SHIFT;
 if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE)
  val |= (params->win.height) & CCDC_FMT_VERT_FMTLNV_MASK;
 else
  val |= (params->win.height >> 1) & CCDC_FMT_VERT_FMTLNV_MASK;

 dev_dbg(ccdc_cfg.dev, "\nparams->win.height  0x%x ...\n",
        params->win.height);
 regw(val, CCDC_FMT_VERT);

 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to FMT_VERT...\n", val);

 dev_dbg(ccdc_cfg.dev, "\nbelow regw(val, FMT_VERT)...");





 if ((config_params->data_sz == CCDC_DATA_8BITS) ||
     config_params->alaw.enable)
  regw((params->win.width + CCDC_32BYTE_ALIGN_VAL) &
      CCDC_HSIZE_OFF_MASK, CCDC_HSIZE_OFF);
 else

  regw(((params->win.width * CCDC_TWO_BYTES_PER_PIXEL) +
      CCDC_32BYTE_ALIGN_VAL) & CCDC_HSIZE_OFF_MASK,
      CCDC_HSIZE_OFF);


 if (params->frm_fmt == CCDC_FRMFMT_INTERLACED) {
  if (params->image_invert_enable) {

   regw(CCDC_INTERLACED_IMAGE_INVERT, CCDC_SDOFST);
   dev_dbg(ccdc_cfg.dev, "\nWriting 0x4B6D to SDOFST..\n");
  }

  else {

   regw(CCDC_INTERLACED_NO_IMAGE_INVERT, CCDC_SDOFST);
   dev_dbg(ccdc_cfg.dev, "\nWriting 0x0249 to SDOFST..\n");
  }
 } else if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
  regw(CCDC_PROGRESSIVE_NO_IMAGE_INVERT, CCDC_SDOFST);
  dev_dbg(ccdc_cfg.dev, "\nWriting 0x0000 to SDOFST...\n");
 }





 if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE)
  val = (((params->win.height - 1) & CCDC_VP_OUT_VERT_NUM_MASK))
      << CCDC_VP_OUT_VERT_NUM_SHIFT;
 else
  val =
      ((((params->win.height >> CCDC_INTERLACED_HEIGHT_SHIFT) -
       1) & CCDC_VP_OUT_VERT_NUM_MASK)) <<
      CCDC_VP_OUT_VERT_NUM_SHIFT;

 val |= ((((params->win.width))) & CCDC_VP_OUT_HORZ_NUM_MASK)
     << CCDC_VP_OUT_HORZ_NUM_SHIFT;
 val |= (params->win.left) & CCDC_VP_OUT_HORZ_ST_MASK;
 regw(val, CCDC_VP_OUT);

 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to VP_OUT...\n", val);
 regw(syn_mode, CCDC_SYN_MODE);
 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to SYN_MODE...\n", syn_mode);

 ccdc_sbl_reset();
 dev_dbg(ccdc_cfg.dev, "\nend of ccdc_config_raw...");
 ccdc_readregs();
}
