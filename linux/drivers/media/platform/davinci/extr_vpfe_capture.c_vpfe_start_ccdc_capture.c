
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {int started; } ;
struct TYPE_3__ {int (* enable_out_to_sdram ) (int) ;int (* enable ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 TYPE_2__* ccdc_dev ;
 int stub1 (int) ;
 int stub2 (int) ;

__attribute__((used)) static void vpfe_start_ccdc_capture(struct vpfe_device *vpfe_dev)
{
 ccdc_dev->hw_ops.enable(1);
 if (ccdc_dev->hw_ops.enable_out_to_sdram)
  ccdc_dev->hw_ops.enable_out_to_sdram(1);
 vpfe_dev->started = 1;
}
