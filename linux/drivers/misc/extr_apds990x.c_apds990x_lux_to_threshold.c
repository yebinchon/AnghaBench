
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int afactor; int cf1; int irf1; int cf2; int irf2; } ;
struct TYPE_3__ {int ga; int df; } ;
struct apds990x_chip {int lux_calib; size_t again_next; int lux_ir; size_t again_meas; int lux_clear; int a_max_result; TYPE_2__ rcf; TYPE_1__ cf; scalar_t__ atime; } ;


 int APDS_CALIB_SCALER ;
 int APDS_PARAM_SCALE ;
 int APDS_RANGE ;
 scalar_t__* again ;

__attribute__((used)) static u16 apds990x_lux_to_threshold(struct apds990x_chip *chip, u32 lux)
{
 u32 thres;
 u32 cpl;
 u32 ir;

 if (lux == 0)
  return 0;
 else if (lux == APDS_RANGE)
  return APDS_RANGE;
 lux = lux * (APDS_CALIB_SCALER / 4) / (chip->lux_calib / 4);


 cpl = ((u32)chip->atime * (u32)again[chip->again_next] *
  APDS_PARAM_SCALE * 64) / (chip->cf.ga * chip->cf.df);

 thres = lux * cpl / 64;





 ir = (u32)chip->lux_ir * (u32)again[chip->again_next] /
  (u32)again[chip->again_meas];





 if (chip->lux_clear * APDS_PARAM_SCALE >=
  chip->rcf.afactor * chip->lux_ir)
  thres = (chip->rcf.cf1 * thres + chip->rcf.irf1 * ir) /
   APDS_PARAM_SCALE;
 else
  thres = (chip->rcf.cf2 * thres + chip->rcf.irf2 * ir) /
   APDS_PARAM_SCALE;

 if (thres >= chip->a_max_result)
  thres = chip->a_max_result - 1;
 return thres;
}
