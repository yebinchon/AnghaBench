
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_WAKE_IRCON ;
 int CIR_WAKE_IRCON_MODE0 ;
 int CIR_WAKE_IRCON_R ;
 int CIR_WAKE_IRCON_RXINV ;
 int CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_WAKE_IRSTS ;
 int LOGICAL_DEV_CIR_WAKE ;
 int nvt_cir_wake_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_enable_logical_dev (struct nvt_dev*,int ) ;

__attribute__((used)) static void nvt_cir_wake_regs_init(struct nvt_dev *nvt)
{
 nvt_enable_logical_dev(nvt, LOGICAL_DEV_CIR_WAKE);





 nvt_cir_wake_reg_write(nvt, CIR_WAKE_IRCON_MODE0 |
          CIR_WAKE_IRCON_R | CIR_WAKE_IRCON_RXINV |
          CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL,
          CIR_WAKE_IRCON);


 nvt_cir_wake_reg_write(nvt, 0xff, CIR_WAKE_IRSTS);
}
