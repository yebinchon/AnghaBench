
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cf1; int irf1; int cf2; int irf2; int df; int ga; } ;
struct apds990x_chip {size_t again_meas; scalar_t__ atime; TYPE_1__ cf; } ;


 int APDS990X_LUX_OUTPUT_SCALE ;
 int APDS_PARAM_SCALE ;
 int* again ;
 int max (int,int) ;

__attribute__((used)) static int apds990x_get_lux(struct apds990x_chip *chip, int clear, int ir)
{
 int iac, iac1, iac2;
 u32 lpc;





 iac1 = (chip->cf.cf1 * clear - chip->cf.irf1 * ir) / APDS_PARAM_SCALE;
 iac2 = (chip->cf.cf2 * clear - chip->cf.irf2 * ir) / APDS_PARAM_SCALE;

 iac = max(iac1, iac2);
 iac = max(iac, 0);

 lpc = APDS990X_LUX_OUTPUT_SCALE * (chip->cf.df * chip->cf.ga) /
  (u32)(again[chip->again_meas] * (u32)chip->atime);

 return (iac * lpc) / APDS_PARAM_SCALE;
}
