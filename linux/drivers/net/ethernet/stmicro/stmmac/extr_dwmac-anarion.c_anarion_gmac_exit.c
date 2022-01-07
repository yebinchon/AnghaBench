
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct anarion_gmac {int dummy; } ;


 int GMAC_RESET_CONTROL_REG ;
 int gmac_write_reg (struct anarion_gmac*,int ,int) ;

__attribute__((used)) static void anarion_gmac_exit(struct platform_device *pdev, void *priv)
{
 struct anarion_gmac *gmac = priv;

 gmac_write_reg(gmac, GMAC_RESET_CONTROL_REG, 1);
}
