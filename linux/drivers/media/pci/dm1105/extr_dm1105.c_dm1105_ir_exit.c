
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct dm1105_dev {TYPE_1__ ir; } ;


 int rc_unregister_device (int ) ;

__attribute__((used)) static void dm1105_ir_exit(struct dm1105_dev *dm1105)
{
 rc_unregister_device(dm1105->ir.dev);
}
