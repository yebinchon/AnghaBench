
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_IR {int work; } ;
struct em28xx {int buttons_query_work; TYPE_1__* intf; scalar_t__ is_audio_only; struct em28xx_IR* ir; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int em28xx_ir_suspend(struct em28xx *dev)
{
 struct em28xx_IR *ir = dev->ir;

 if (dev->is_audio_only)
  return 0;

 dev_info(&dev->intf->dev, "Suspending input extension\n");
 if (ir)
  cancel_delayed_work_sync(&ir->work);
 cancel_delayed_work_sync(&dev->buttons_query_work);





 return 0;
}
