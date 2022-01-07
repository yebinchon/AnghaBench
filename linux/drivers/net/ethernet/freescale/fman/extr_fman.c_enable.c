
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fman_cfg {int qmi_def_tnums_thresh; } ;
struct fman {TYPE_2__* qmi_regs; TYPE_1__* bmi_regs; } ;
struct TYPE_4__ {int fmqm_gc; } ;
struct TYPE_3__ {int fmbm_init; } ;


 int BMI_INIT_START ;
 int QMI_CFG_DEQ_EN ;
 int QMI_CFG_ENQ_EN ;
 int QMI_CFG_EN_COUNTERS ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static int enable(struct fman *fman, struct fman_cfg *cfg)
{
 u32 cfg_reg = 0;






 cfg_reg = QMI_CFG_EN_COUNTERS;


 cfg_reg |= (cfg->qmi_def_tnums_thresh << 8) | cfg->qmi_def_tnums_thresh;

 iowrite32be(BMI_INIT_START, &fman->bmi_regs->fmbm_init);
 iowrite32be(cfg_reg | QMI_CFG_ENQ_EN | QMI_CFG_DEQ_EN,
      &fman->qmi_regs->fmqm_gc);

 return 0;
}
