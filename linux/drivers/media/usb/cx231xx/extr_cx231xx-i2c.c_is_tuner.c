
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {scalar_t__ addr; } ;
struct cx231xx_i2c {int nr; } ;
struct TYPE_2__ {int tuner_i2c_master; scalar_t__ tuner_addr; } ;
struct cx231xx {int tuner_type; TYPE_1__ board; } ;


 int get_real_i2c_port (struct cx231xx*,int ) ;

__attribute__((used)) static inline bool is_tuner(struct cx231xx *dev, struct cx231xx_i2c *bus,
   const struct i2c_msg *msg, int tuner_type)
{
 int i2c_port = get_real_i2c_port(dev, bus->nr);

 if (i2c_port != dev->board.tuner_i2c_master)
  return 0;

 if (msg->addr != dev->board.tuner_addr)
  return 0;

 if (dev->tuner_type != tuner_type)
  return 0;

 return 1;
}
