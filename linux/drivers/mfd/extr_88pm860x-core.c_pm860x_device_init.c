
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_platform_data {int dummy; } ;
struct pm860x_chip {int id; scalar_t__ companion; scalar_t__ client; scalar_t__ core_irq; } ;




 int device_8606_init (struct pm860x_chip*,scalar_t__,struct pm860x_platform_data*) ;
 int device_8607_init (struct pm860x_chip*,scalar_t__,struct pm860x_platform_data*) ;

__attribute__((used)) static int pm860x_device_init(struct pm860x_chip *chip,
     struct pm860x_platform_data *pdata)
{
 chip->core_irq = 0;

 switch (chip->id) {
 case 129:
  device_8606_init(chip, chip->client, pdata);
  break;
 case 128:
  device_8607_init(chip, chip->client, pdata);
  break;
 }

 if (chip->companion) {
  switch (chip->id) {
  case 128:
   device_8606_init(chip, chip->companion, pdata);
   break;
  case 129:
   device_8607_init(chip, chip->companion, pdata);
   break;
  }
 }

 return 0;
}
