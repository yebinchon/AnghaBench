
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {int dummy; } ;
struct TYPE_2__ {int carrier; } ;


 int EINVAL ;
 TYPE_1__ serial_ir ;

__attribute__((used)) static int serial_ir_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 if (carrier > 500000 || carrier < 20000)
  return -EINVAL;

 serial_ir.carrier = carrier;
 return 0;
}
