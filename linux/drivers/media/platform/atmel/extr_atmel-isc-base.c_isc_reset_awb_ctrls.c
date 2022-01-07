
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* gain; int * offset; } ;
struct isc_device {TYPE_1__ ctrls; } ;


 unsigned int ISC_HIS_CFG_MODE_B ;
 unsigned int ISC_HIS_CFG_MODE_GR ;
 int ISC_WB_O_ZERO_VAL ;

__attribute__((used)) static inline void isc_reset_awb_ctrls(struct isc_device *isc)
{
 unsigned int c;

 for (c = ISC_HIS_CFG_MODE_GR; c <= ISC_HIS_CFG_MODE_B; c++) {

  isc->ctrls.gain[c] = 1 << 9;





  isc->ctrls.offset[c] = ISC_WB_O_ZERO_VAL;
 }
}
