
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_IR {int polling; int work; } ;
struct em28xx {int button_polling_interval; int buttons_query_work; scalar_t__ num_button_polling_addresses; TYPE_1__* intf; scalar_t__ is_audio_only; struct em28xx_IR* ir; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int em28xx_ir_resume(struct em28xx *dev)
{
 struct em28xx_IR *ir = dev->ir;

 if (dev->is_audio_only)
  return 0;

 dev_info(&dev->intf->dev, "Resuming input extension\n");




 if (ir)
  schedule_delayed_work(&ir->work, msecs_to_jiffies(ir->polling));
 if (dev->num_button_polling_addresses)
  schedule_delayed_work(&dev->buttons_query_work,
          msecs_to_jiffies(dev->button_polling_interval));
 return 0;
}
