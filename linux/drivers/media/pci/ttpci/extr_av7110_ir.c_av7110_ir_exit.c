
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcdev; } ;
struct av7110 {TYPE_1__ ir; } ;


 int rc_unregister_device (int ) ;

void av7110_ir_exit(struct av7110 *av7110)
{
 rc_unregister_device(av7110->ir.rcdev);
}
