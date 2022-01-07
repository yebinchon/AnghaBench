
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int logical_dev_cir; } ;


 int CIR_CR_DEV_EN ;
 int CIR_STATUS ;
 int CIR_STATUS_IRQ_EN ;
 int CIR_STATUS_IRQ_MASK ;
 int LOGICAL_DEV_ENABLE ;
 int fintek_cir_reg_write (struct fintek_dev*,int ,int ) ;
 int fintek_config_mode_disable (struct fintek_dev*) ;
 int fintek_config_mode_enable (struct fintek_dev*) ;
 int fintek_cr_write (struct fintek_dev*,int ,int ) ;
 int fintek_enable_cir_irq (struct fintek_dev*) ;
 int fintek_select_logical_dev (struct fintek_dev*,int ) ;

__attribute__((used)) static void fintek_enable_cir(struct fintek_dev *fintek)
{

 fintek_cir_reg_write(fintek, CIR_STATUS_IRQ_EN, CIR_STATUS);

 fintek_config_mode_enable(fintek);


 fintek_select_logical_dev(fintek, fintek->logical_dev_cir);
 fintek_cr_write(fintek, LOGICAL_DEV_ENABLE, CIR_CR_DEV_EN);

 fintek_config_mode_disable(fintek);


 fintek_cir_reg_write(fintek, CIR_STATUS_IRQ_MASK, CIR_STATUS);


 fintek_enable_cir_irq(fintek);
}
