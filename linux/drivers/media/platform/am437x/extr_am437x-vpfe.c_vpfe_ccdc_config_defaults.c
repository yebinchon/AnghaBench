
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int gamma_wd; } ;
struct TYPE_12__ {TYPE_4__ alaw; int data_sz; } ;
struct TYPE_10__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_13__ {TYPE_5__ config_params; TYPE_3__ win; void* hd_pol; void* vd_pol; void* fid_pol; int frm_fmt; int pix_fmt; } ;
struct TYPE_8__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_9__ {int bt656_enable; TYPE_1__ win; int buf_type; int pix_order; void* hd_pol; void* vd_pol; void* fid_pol; int frm_fmt; int pix_fmt; } ;
struct TYPE_14__ {TYPE_6__ bayer; TYPE_2__ ycbcr; int if_type; } ;
struct vpfe_ccdc {TYPE_7__ ccdc_cfg; } ;


 int CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_FRMFMT_PROGRESSIVE ;
 int CCDC_PIXFMT_RAW ;
 int CCDC_PIXFMT_YCBCR_8BIT ;
 int CCDC_PIXORDER_CBYCRY ;
 int VPFE_CCDC_DATA_8BITS ;
 int VPFE_CCDC_GAMMA_BITS_09_0 ;
 void* VPFE_PINPOL_POSITIVE ;
 int VPFE_RAW_BAYER ;

__attribute__((used)) static void vpfe_ccdc_config_defaults(struct vpfe_ccdc *ccdc)
{
 ccdc->ccdc_cfg.if_type = VPFE_RAW_BAYER;

 ccdc->ccdc_cfg.ycbcr.pix_fmt = CCDC_PIXFMT_YCBCR_8BIT;
 ccdc->ccdc_cfg.ycbcr.frm_fmt = CCDC_FRMFMT_INTERLACED;
 ccdc->ccdc_cfg.ycbcr.fid_pol = VPFE_PINPOL_POSITIVE;
 ccdc->ccdc_cfg.ycbcr.vd_pol = VPFE_PINPOL_POSITIVE;
 ccdc->ccdc_cfg.ycbcr.hd_pol = VPFE_PINPOL_POSITIVE;
 ccdc->ccdc_cfg.ycbcr.pix_order = CCDC_PIXORDER_CBYCRY;
 ccdc->ccdc_cfg.ycbcr.buf_type = CCDC_BUFTYPE_FLD_INTERLEAVED;

 ccdc->ccdc_cfg.ycbcr.win.left = 0;
 ccdc->ccdc_cfg.ycbcr.win.top = 0;
 ccdc->ccdc_cfg.ycbcr.win.width = 720;
 ccdc->ccdc_cfg.ycbcr.win.height = 576;
 ccdc->ccdc_cfg.ycbcr.bt656_enable = 1;

 ccdc->ccdc_cfg.bayer.pix_fmt = CCDC_PIXFMT_RAW;
 ccdc->ccdc_cfg.bayer.frm_fmt = CCDC_FRMFMT_PROGRESSIVE;
 ccdc->ccdc_cfg.bayer.fid_pol = VPFE_PINPOL_POSITIVE;
 ccdc->ccdc_cfg.bayer.vd_pol = VPFE_PINPOL_POSITIVE;
 ccdc->ccdc_cfg.bayer.hd_pol = VPFE_PINPOL_POSITIVE;

 ccdc->ccdc_cfg.bayer.win.left = 0;
 ccdc->ccdc_cfg.bayer.win.top = 0;
 ccdc->ccdc_cfg.bayer.win.width = 800;
 ccdc->ccdc_cfg.bayer.win.height = 600;
 ccdc->ccdc_cfg.bayer.config_params.data_sz = VPFE_CCDC_DATA_8BITS;
 ccdc->ccdc_cfg.bayer.config_params.alaw.gamma_wd =
      VPFE_CCDC_GAMMA_BITS_09_0;
}
