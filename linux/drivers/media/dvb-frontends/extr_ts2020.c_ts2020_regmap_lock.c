
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ts2020_priv {TYPE_2__* fe; int regmap_mutex; } ;
struct TYPE_3__ {int (* i2c_gate_ctrl ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int mutex_lock (int *) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void ts2020_regmap_lock(void *__dev)
{
 struct ts2020_priv *dev = __dev;

 mutex_lock(&dev->regmap_mutex);
 if (dev->fe->ops.i2c_gate_ctrl)
  dev->fe->ops.i2c_gate_ctrl(dev->fe, 1);
}
