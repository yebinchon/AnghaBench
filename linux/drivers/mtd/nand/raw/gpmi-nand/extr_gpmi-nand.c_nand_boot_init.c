
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {int dummy; } ;


 scalar_t__ GPMI_IS_MX23 (struct gpmi_nand_data*) ;
 int mx23_boot_init (struct gpmi_nand_data*) ;
 int nand_boot_set_geometry (struct gpmi_nand_data*) ;

__attribute__((used)) static int nand_boot_init(struct gpmi_nand_data *this)
{
 nand_boot_set_geometry(this);


 if (GPMI_IS_MX23(this))
  return mx23_boot_init(this);
 return 0;
}
