
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cs_context; int prefetch_control; int prefetch_config2; int prefetch_config1; int config; int timeout_ctrl; int irqenable; int sysconfig; } ;
struct TYPE_3__ {int config7; int config6; int config5; int config4; int config3; int config2; int config1; scalar_t__ is_valid; } ;


 int GPMC_CONFIG ;
 int GPMC_CS_CONFIG1 ;
 int GPMC_CS_CONFIG2 ;
 int GPMC_CS_CONFIG3 ;
 int GPMC_CS_CONFIG4 ;
 int GPMC_CS_CONFIG5 ;
 int GPMC_CS_CONFIG6 ;
 int GPMC_CS_CONFIG7 ;
 int GPMC_IRQENABLE ;
 int GPMC_PREFETCH_CONFIG1 ;
 int GPMC_PREFETCH_CONFIG2 ;
 int GPMC_PREFETCH_CONTROL ;
 int GPMC_SYSCONFIG ;
 int GPMC_TIMEOUT_CONTROL ;
 int gpmc_base ;
 TYPE_2__ gpmc_context ;
 int gpmc_cs_num ;
 int gpmc_cs_write_reg (int,int ,int ) ;
 int gpmc_write_reg (int ,int ) ;

void omap3_gpmc_restore_context(void)
{
 int i;

 if (!gpmc_base)
  return;

 gpmc_write_reg(GPMC_SYSCONFIG, gpmc_context.sysconfig);
 gpmc_write_reg(GPMC_IRQENABLE, gpmc_context.irqenable);
 gpmc_write_reg(GPMC_TIMEOUT_CONTROL, gpmc_context.timeout_ctrl);
 gpmc_write_reg(GPMC_CONFIG, gpmc_context.config);
 gpmc_write_reg(GPMC_PREFETCH_CONFIG1, gpmc_context.prefetch_config1);
 gpmc_write_reg(GPMC_PREFETCH_CONFIG2, gpmc_context.prefetch_config2);
 gpmc_write_reg(GPMC_PREFETCH_CONTROL, gpmc_context.prefetch_control);
 for (i = 0; i < gpmc_cs_num; i++) {
  if (gpmc_context.cs_context[i].is_valid) {
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG1,
    gpmc_context.cs_context[i].config1);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG2,
    gpmc_context.cs_context[i].config2);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG3,
    gpmc_context.cs_context[i].config3);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG4,
    gpmc_context.cs_context[i].config4);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG5,
    gpmc_context.cs_context[i].config5);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG6,
    gpmc_context.cs_context[i].config6);
   gpmc_cs_write_reg(i, GPMC_CS_CONFIG7,
    gpmc_context.cs_context[i].config7);
  }
 }
}
