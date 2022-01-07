
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int enable_isr; int enable_ecc_isr; } ;
struct TYPE_4__ {int order; TYPE_1__ irq; int code_wr_protect; int bypass; } ;
struct xsdfec_dev {int state; TYPE_2__ config; } ;


 int XSDFEC_AXIS_ENABLE_ADDR ;
 int XSDFEC_AXIS_IN_ENABLE_MASK ;
 int XSDFEC_BYPASS_ADDR ;
 int XSDFEC_CODE_WR_PROTECT_ADDR ;
 int XSDFEC_ECC_IMR_ADDR ;
 int XSDFEC_ECC_ISR_MASK ;
 int XSDFEC_IMR_ADDR ;
 int XSDFEC_ISR_MASK ;
 int XSDFEC_ORDER_ADDR ;
 int XSDFEC_STARTED ;
 int XSDFEC_STOPPED ;
 int update_bool_config_from_reg (struct xsdfec_dev*,int ,int ,int *) ;
 int xsdfec_regread (struct xsdfec_dev*,int ) ;

__attribute__((used)) static void update_config_from_hw(struct xsdfec_dev *xsdfec)
{
 u32 reg_value;
 bool sdfec_started;


 reg_value = xsdfec_regread(xsdfec, XSDFEC_ORDER_ADDR);
 xsdfec->config.order = reg_value;

 update_bool_config_from_reg(xsdfec, XSDFEC_BYPASS_ADDR,
        0,
        &xsdfec->config.bypass);

 update_bool_config_from_reg(xsdfec, XSDFEC_CODE_WR_PROTECT_ADDR,
        0,
        &xsdfec->config.code_wr_protect);

 reg_value = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
 xsdfec->config.irq.enable_isr = (reg_value & XSDFEC_ISR_MASK) > 0;

 reg_value = xsdfec_regread(xsdfec, XSDFEC_ECC_IMR_ADDR);
 xsdfec->config.irq.enable_ecc_isr =
  (reg_value & XSDFEC_ECC_ISR_MASK) > 0;

 reg_value = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
 sdfec_started = (reg_value & XSDFEC_AXIS_IN_ENABLE_MASK) > 0;
 if (sdfec_started)
  xsdfec->state = XSDFEC_STARTED;
 else
  xsdfec->state = XSDFEC_STOPPED;
}
