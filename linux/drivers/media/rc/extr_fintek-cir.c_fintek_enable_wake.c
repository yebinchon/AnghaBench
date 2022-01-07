
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int dummy; } ;


 int ACPI_PME_CIR_BIT ;
 int ACPI_STATE_CIR_BIT ;
 int ACPI_WAKE_EN_CIR_BIT ;
 int LDEV_ACPI_PME_CLR_REG ;
 int LDEV_ACPI_PME_EN_REG ;
 int LDEV_ACPI_STATE_REG ;
 int LDEV_ACPI_WAKE_EN_REG ;
 int LOGICAL_DEV_ACPI ;
 int fintek_config_mode_disable (struct fintek_dev*) ;
 int fintek_config_mode_enable (struct fintek_dev*) ;
 int fintek_select_logical_dev (struct fintek_dev*,int ) ;
 int fintek_set_reg_bit (struct fintek_dev*,int ,int ) ;

__attribute__((used)) static void fintek_enable_wake(struct fintek_dev *fintek)
{
 fintek_config_mode_enable(fintek);
 fintek_select_logical_dev(fintek, LOGICAL_DEV_ACPI);


 fintek_set_reg_bit(fintek, ACPI_WAKE_EN_CIR_BIT, LDEV_ACPI_WAKE_EN_REG);

 fintek_set_reg_bit(fintek, ACPI_PME_CIR_BIT, LDEV_ACPI_PME_EN_REG);

 fintek_set_reg_bit(fintek, ACPI_PME_CIR_BIT, LDEV_ACPI_PME_CLR_REG);

 fintek_set_reg_bit(fintek, ACPI_STATE_CIR_BIT, LDEV_ACPI_STATE_REG);

 fintek_config_mode_disable(fintek);
}
