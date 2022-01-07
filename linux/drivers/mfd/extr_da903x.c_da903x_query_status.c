
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct da903x_chip {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_status ) (struct da903x_chip*,unsigned int*) ;} ;


 struct da903x_chip* dev_get_drvdata (struct device*) ;
 int stub1 (struct da903x_chip*,unsigned int*) ;

int da903x_query_status(struct device *dev, unsigned int sbits)
{
 struct da903x_chip *chip = dev_get_drvdata(dev);
 unsigned int status = 0;

 chip->ops->read_status(chip, &status);
 return ((status & sbits) == sbits);
}
