
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct isc_subdev_entity {int pfe_cfg0; } ;
struct TYPE_6__ {int rlp_cfg_mode; int bits_pipeline; int dcfg_imode; TYPE_2__* sd_format; } ;
struct TYPE_4__ {scalar_t__ awb; } ;
struct isc_device {TYPE_3__ config; TYPE_1__ ctrls; struct isc_subdev_entity* current_subdev; struct regmap* regmap; } ;
struct TYPE_5__ {int pfe_cfg0_bps; int mbus_code; } ;


 int ISC_DCFG ;
 int ISC_DCFG_CMBSIZE_BEATS8 ;
 int ISC_DCFG_YMBSIZE_BEATS8 ;
 scalar_t__ ISC_IS_FORMAT_RAW (int ) ;
 int ISC_PFE_CFG0 ;
 int ISC_PFE_CFG0_BPS_MASK ;
 int ISC_PFE_CFG0_CCIR656 ;
 int ISC_PFE_CFG0_CCIR_CRC ;
 int ISC_PFE_CFG0_HPOL_LOW ;
 int ISC_PFE_CFG0_MODE_MASK ;
 int ISC_PFE_CFG0_MODE_PROGRESSIVE ;
 int ISC_PFE_CFG0_PPOL_LOW ;
 int ISC_PFE_CFG0_VPOL_LOW ;
 int ISC_RLP_CFG ;
 int ISC_RLP_CFG_MODE_MASK ;
 int isc_set_histogram (struct isc_device*,int) ;
 int isc_set_pipeline (struct isc_device*,int) ;
 int isc_update_profile (struct isc_device*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int isc_configure(struct isc_device *isc)
{
 struct regmap *regmap = isc->regmap;
 u32 pfe_cfg0, rlp_mode, dcfg, mask, pipeline;
 struct isc_subdev_entity *subdev = isc->current_subdev;

 pfe_cfg0 = isc->config.sd_format->pfe_cfg0_bps;
 rlp_mode = isc->config.rlp_cfg_mode;
 pipeline = isc->config.bits_pipeline;

 dcfg = isc->config.dcfg_imode |
         ISC_DCFG_YMBSIZE_BEATS8 | ISC_DCFG_CMBSIZE_BEATS8;

 pfe_cfg0 |= subdev->pfe_cfg0 | ISC_PFE_CFG0_MODE_PROGRESSIVE;
 mask = ISC_PFE_CFG0_BPS_MASK | ISC_PFE_CFG0_HPOL_LOW |
        ISC_PFE_CFG0_VPOL_LOW | ISC_PFE_CFG0_PPOL_LOW |
        ISC_PFE_CFG0_MODE_MASK | ISC_PFE_CFG0_CCIR_CRC |
     ISC_PFE_CFG0_CCIR656;

 regmap_update_bits(regmap, ISC_PFE_CFG0, mask, pfe_cfg0);

 regmap_update_bits(regmap, ISC_RLP_CFG, ISC_RLP_CFG_MODE_MASK,
      rlp_mode);

 regmap_write(regmap, ISC_DCFG, dcfg);


 isc_set_pipeline(isc, pipeline);





 if (isc->ctrls.awb &&
     ISC_IS_FORMAT_RAW(isc->config.sd_format->mbus_code))
  isc_set_histogram(isc, 1);
 else
  isc_set_histogram(isc, 0);


 return isc_update_profile(isc);
}
