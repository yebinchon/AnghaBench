
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_CONFIG ;
 unsigned int VPFE_CONFIG_EN_ENABLE ;
 unsigned int VPFE_CONFIG_EN_SHIFT ;
 unsigned int vpfe_reg_read (struct vpfe_ccdc*,int ) ;
 int vpfe_reg_write (struct vpfe_ccdc*,unsigned int,int ) ;

__attribute__((used)) static void vpfe_config_enable(struct vpfe_ccdc *ccdc, int flag)
{
 unsigned int cfg;

 if (!flag) {
  cfg = vpfe_reg_read(ccdc, VPFE_CONFIG);
  cfg &= ~(VPFE_CONFIG_EN_ENABLE << VPFE_CONFIG_EN_SHIFT);
 } else {
  cfg = VPFE_CONFIG_EN_ENABLE << VPFE_CONFIG_EN_SHIFT;
 }

 vpfe_reg_write(ccdc, cfg, VPFE_CONFIG);
}
