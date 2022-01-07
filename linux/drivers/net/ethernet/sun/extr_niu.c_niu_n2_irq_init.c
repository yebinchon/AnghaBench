
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int num_irqs; int * irqs; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ archdata; TYPE_3__ dev; } ;
struct niu {int num_ldg; TYPE_1__* ldg; struct platform_device* op; } ;
struct TYPE_4__ {int irq; } ;


 int EINVAL ;
 int ENODEV ;
 int * of_get_property (int ,char*,int *) ;

__attribute__((used)) static int niu_n2_irq_init(struct niu *np, u8 *ldg_num_map)
{
 return -EINVAL;

}
