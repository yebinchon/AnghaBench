
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int dummy; } ;


 int ENE_CIRCFG ;
 int ENE_CIRCFG_RX_EN ;
 int ENE_CIRCFG_RX_IRQ ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int,int) ;

__attribute__((used)) static void ene_rx_enable_cir_engine(struct ene_device *dev, bool enable)
{
 ene_set_clear_reg_mask(dev, ENE_CIRCFG,
   ENE_CIRCFG_RX_EN | ENE_CIRCFG_RX_IRQ, enable);
}
