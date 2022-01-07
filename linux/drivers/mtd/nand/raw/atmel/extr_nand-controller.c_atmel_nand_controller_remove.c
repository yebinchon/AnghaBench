
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct atmel_nand_controller {TYPE_2__* caps; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* remove ) (struct atmel_nand_controller*) ;} ;


 struct atmel_nand_controller* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct atmel_nand_controller*) ;

__attribute__((used)) static int atmel_nand_controller_remove(struct platform_device *pdev)
{
 struct atmel_nand_controller *nc = platform_get_drvdata(pdev);

 return nc->caps->ops->remove(nc);
}
