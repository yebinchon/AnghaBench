
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_IR {struct em28xx_IR* i2c_client; int rc; } ;
struct em28xx {int ref; struct em28xx_IR* ir; TYPE_1__* intf; scalar_t__ is_audio_only; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int em28xx_free_device ;
 int em28xx_shutdown_buttons (struct em28xx*) ;
 int kfree (struct em28xx_IR*) ;
 int kref_put (int *,int ) ;
 int rc_unregister_device (int ) ;

__attribute__((used)) static int em28xx_ir_fini(struct em28xx *dev)
{
 struct em28xx_IR *ir = dev->ir;

 if (dev->is_audio_only) {

  return 0;
 }

 dev_info(&dev->intf->dev, "Closing input extension\n");

 em28xx_shutdown_buttons(dev);


 if (!ir)
  goto ref_put;

 rc_unregister_device(ir->rc);

 kfree(ir->i2c_client);


 kfree(ir);
 dev->ir = ((void*)0);

ref_put:
 kref_put(&dev->ref, em28xx_free_device);

 return 0;
}
