
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct vpss_sync_pol {int ccdpg_hdpol; int ccdpg_vdpol; } ;
struct vpss_pg_frame_size {int hlpfr; int pplen; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_11__ {int df_or_csc; } ;
struct TYPE_9__ {int olop; int olep; int elop; int elep; } ;
struct TYPE_8__ {int olop; int olep; int elop; int elep; } ;
struct TYPE_7__ {scalar_t__ alg; int pred; } ;
struct isif_config_params_raw {int data_shift; int horz_offset; int vert_offset; scalar_t__ test_pat_gen; int culling; int linearize; TYPE_5__ df_csc; int dfc; int bclamp; TYPE_3__ col_pat_field1; TYPE_2__ col_pat_field0; TYPE_1__ compress; } ;
struct isif_params_raw {int vd_pol; int hd_pol; int fid_pol; int frm_fmt; int pix_fmt; int cfa_pat; int data_msb; TYPE_4__ win; struct isif_config_params_raw config_params; scalar_t__ image_invert_en; int horz_flip_en; } ;
struct TYPE_12__ {int data_pack; int dev; struct isif_params_raw bayer; } ;


 int BIT (int ) ;
 int CCDCFG ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_FRMFMT_PROGRESSIVE ;
 int CCOLP ;
 int CGAMMAWD ;
 int DATAHOFST ;
 int DATAVOFST ;
 int EFAULT ;
 int HSIZE ;
 scalar_t__ ISIF_ALAW ;
 int ISIF_ALAW_ENABLE ;
 int ISIF_ALAW_GAMMA_WD_SHIFT ;
 int ISIF_CCDCFG_EXTRG_DISABLE ;
 int ISIF_CCDCFG_FIDMD_LATCH_VSYNC ;
 int ISIF_CCDCFG_TRGSEL_WEN ;
 int ISIF_CCDCFG_WENLOG_AND ;
 int ISIF_DATAPOL_NORMAL ;
 int ISIF_DATAPOL_SHIFT ;
 int ISIF_DATASFT_SHIFT ;
 scalar_t__ ISIF_DPCM ;
 int ISIF_DPCM_EN_SHIFT ;
 int ISIF_DPCM_PREDICTOR_SHIFT ;
 int ISIF_EXWEN_DISABLE ;
 int ISIF_EXWEN_SHIFT ;
 int ISIF_FID_POL_SHIFT ;
 int ISIF_FRM_FMT_SHIFT ;
 int ISIF_GAMMAWD_CFA_SHIFT ;
 int ISIF_HD_POL_SHIFT ;
 int ISIF_HSIZE_FLIP_SHIFT ;
 int ISIF_INPUT_SHIFT ;
 int ISIF_PACK_12BIT ;
 int ISIF_PACK_8BIT ;
 int ISIF_VDHDOUT_INPUT ;
 int ISIF_VD_POL_SHIFT ;
 int ISIF_YCINSWP_RAW ;
 int MISC ;
 int MODESET ;
 int SDOFST ;
 int VPSS_PGLPBK ;
 int dev_dbg (int ,char*,...) ;
 int dm365_vpss_set_pg_frame_size (struct vpss_pg_frame_size) ;
 int dm365_vpss_set_sync_pol (struct vpss_sync_pol) ;
 TYPE_6__ isif_cfg ;
 int isif_config_bclamp (int *) ;
 int isif_config_csc (TYPE_5__*) ;
 int isif_config_culling (int *) ;
 scalar_t__ isif_config_dfc (int *) ;
 int isif_config_gain_offset () ;
 int isif_config_linearization (int *) ;
 int isif_setwin (TYPE_4__*,int,int) ;
 int regw (int,int ) ;
 int vpss_select_ccdc_source (int ) ;

__attribute__((used)) static int isif_config_raw(void)
{
 struct isif_params_raw *params = &isif_cfg.bayer;
 struct isif_config_params_raw *module_params =
  &isif_cfg.bayer.config_params;
 struct vpss_pg_frame_size frame_size;
 struct vpss_sync_pol sync;
 u32 val;

 dev_dbg(isif_cfg.dev, "\nStarting isif_config_raw..\n");
 val = ISIF_YCINSWP_RAW | ISIF_CCDCFG_FIDMD_LATCH_VSYNC |
  ISIF_CCDCFG_WENLOG_AND | ISIF_CCDCFG_TRGSEL_WEN |
  ISIF_CCDCFG_EXTRG_DISABLE | isif_cfg.data_pack;

 dev_dbg(isif_cfg.dev, "Writing 0x%x to ...CCDCFG \n", val);
 regw(val, CCDCFG);
 val = ISIF_VDHDOUT_INPUT | (params->vd_pol << ISIF_VD_POL_SHIFT) |
  (params->hd_pol << ISIF_HD_POL_SHIFT) |
  (params->fid_pol << ISIF_FID_POL_SHIFT) |
  (ISIF_DATAPOL_NORMAL << ISIF_DATAPOL_SHIFT) |
  (ISIF_EXWEN_DISABLE << ISIF_EXWEN_SHIFT) |
  (params->frm_fmt << ISIF_FRM_FMT_SHIFT) |
  (params->pix_fmt << ISIF_INPUT_SHIFT) |
  (params->config_params.data_shift << ISIF_DATASFT_SHIFT);

 regw(val, MODESET);
 dev_dbg(isif_cfg.dev, "Writing 0x%x to MODESET...\n", val);





 val = params->cfa_pat << ISIF_GAMMAWD_CFA_SHIFT;


 if (module_params->compress.alg == ISIF_ALAW)
  val |= ISIF_ALAW_ENABLE;

 val |= (params->data_msb << ISIF_ALAW_GAMMA_WD_SHIFT);
 regw(val, CGAMMAWD);


 if (module_params->compress.alg == ISIF_DPCM) {
  val = BIT(ISIF_DPCM_EN_SHIFT) |
         (module_params->compress.pred <<
         ISIF_DPCM_PREDICTOR_SHIFT);
 }

 regw(val, MISC);


 isif_config_gain_offset();


 val = (params->config_params.col_pat_field0.olop) |
       (params->config_params.col_pat_field0.olep << 2) |
       (params->config_params.col_pat_field0.elop << 4) |
       (params->config_params.col_pat_field0.elep << 6) |
       (params->config_params.col_pat_field1.olop << 8) |
       (params->config_params.col_pat_field1.olep << 10) |
       (params->config_params.col_pat_field1.elop << 12) |
       (params->config_params.col_pat_field1.elep << 14);
 regw(val, CCOLP);
 dev_dbg(isif_cfg.dev, "Writing %x to CCOLP ...\n", val);


 val = (!!params->horz_flip_en) << ISIF_HSIZE_FLIP_SHIFT;


 if (isif_cfg.data_pack == ISIF_PACK_8BIT)
  val |= ((params->win.width + 31) >> 5);
 else if (isif_cfg.data_pack == ISIF_PACK_12BIT)
  val |= (((params->win.width +
         (params->win.width >> 2)) + 31) >> 5);
 else
  val |= (((params->win.width * 2) + 31) >> 5);
 regw(val, HSIZE);


 if (params->frm_fmt == CCDC_FRMFMT_INTERLACED) {
  if (params->image_invert_en) {

   regw(0x4B6D, SDOFST);
   dev_dbg(isif_cfg.dev, "Writing 0x4B6D to SDOFST...\n");
  } else {

   regw(0x0B6D, SDOFST);
   dev_dbg(isif_cfg.dev, "Writing 0x0B6D to SDOFST...\n");
  }
 } else if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
  if (params->image_invert_en) {

   regw(0x4000, SDOFST);
   dev_dbg(isif_cfg.dev, "Writing 0x4000 to SDOFST...\n");
  } else {

   regw(0x0000, SDOFST);
   dev_dbg(isif_cfg.dev, "Writing 0x0000 to SDOFST...\n");
  }
 }


 isif_setwin(&params->win, params->frm_fmt, 1);


 isif_config_bclamp(&module_params->bclamp);


 if (isif_config_dfc(&module_params->dfc) < 0)
  return -EFAULT;

 if (!module_params->df_csc.df_or_csc)

  isif_config_csc(&module_params->df_csc);

 isif_config_linearization(&module_params->linearize);


 isif_config_culling(&module_params->culling);


 regw(module_params->horz_offset, DATAHOFST);
 regw(module_params->vert_offset, DATAVOFST);


 if (params->config_params.test_pat_gen) {

  sync.ccdpg_hdpol = params->hd_pol;
  sync.ccdpg_vdpol = params->vd_pol;
  dm365_vpss_set_sync_pol(sync);
  frame_size.hlpfr = isif_cfg.bayer.win.width;
  frame_size.pplen = isif_cfg.bayer.win.height;
  dm365_vpss_set_pg_frame_size(frame_size);
  vpss_select_ccdc_source(VPSS_PGLPBK);
 }

 dev_dbg(isif_cfg.dev, "\nEnd of isif_config_ycbcr...\n");
 return 0;
}
