
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subsample; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 int MCHIP_HIC_STATUS ;
 int MCHIP_HIC_STATUS_IDLE ;
 int MCHIP_MCC_B_XRANGE ;
 int MCHIP_MCC_B_YRANGE ;
 int MCHIP_MCC_R_SAMPLING ;
 int MCHIP_MCC_R_XRANGE ;
 int MCHIP_MCC_R_YRANGE ;
 int mchip_delay (int ,int ) ;
 int mchip_hsize () ;
 int mchip_set (int ,int ) ;
 int mchip_vsize () ;
 TYPE_2__ meye ;

__attribute__((used)) static void mchip_subsample(void)
{
 mchip_set(MCHIP_MCC_R_SAMPLING, meye.params.subsample);
 mchip_set(MCHIP_MCC_R_XRANGE, mchip_hsize());
 mchip_set(MCHIP_MCC_R_YRANGE, mchip_vsize());
 mchip_set(MCHIP_MCC_B_XRANGE, mchip_hsize());
 mchip_set(MCHIP_MCC_B_YRANGE, mchip_vsize());
 mchip_delay(MCHIP_HIC_STATUS, MCHIP_HIC_STATUS_IDLE);
}
