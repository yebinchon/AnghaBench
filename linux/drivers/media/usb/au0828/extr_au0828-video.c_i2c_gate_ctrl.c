
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* frontend; } ;
struct au0828_dev {TYPE_3__ dvb; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (TYPE_4__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ analog_ops; } ;
struct TYPE_8__ {TYPE_2__ ops; } ;


 int stub1 (TYPE_4__*,int) ;

__attribute__((used)) static inline void i2c_gate_ctrl(struct au0828_dev *dev, int val)
{
 if (dev->dvb.frontend && dev->dvb.frontend->ops.analog_ops.i2c_gate_ctrl)
  dev->dvb.frontend->ops.analog_ops.i2c_gate_ctrl(dev->dvb.frontend, val);
}
