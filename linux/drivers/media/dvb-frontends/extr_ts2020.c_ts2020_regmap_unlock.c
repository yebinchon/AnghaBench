
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ts2020_priv {int regmap_mutex; TYPE_2__* fe; } ;
struct TYPE_3__ {int (* i2c_gate_ctrl ) (TYPE_2__*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void ts2020_regmap_unlock(void *__dev)
{
 struct ts2020_priv *dev = __dev;

 if (dev->fe->ops.i2c_gate_ctrl)
  dev->fe->ops.i2c_gate_ctrl(dev->fe, 0);
 mutex_unlock(&dev->regmap_mutex);
}
