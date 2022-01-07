
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct htcpld_data {struct htcpld_chip* chip; } ;
struct htcpld_chip {int client; } ;


 int i2c_unregister_device (int ) ;
 struct htcpld_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void htcpld_unregister_chip_i2c(
  struct platform_device *pdev,
  int chip_index)
{
 struct htcpld_data *htcpld;
 struct htcpld_chip *chip;


 htcpld = platform_get_drvdata(pdev);
 chip = &htcpld->chip[chip_index];

 i2c_unregister_device(chip->client);
}
