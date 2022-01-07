
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ddb_port {scalar_t__ lnr; TYPE_1__* i2c; struct ddb* dev; } ;
struct ddb {size_t i2c_num; TYPE_1__* i2c; } ;
struct TYPE_2__ {scalar_t__ link; } ;



__attribute__((used)) static int ddb_port_match_link_i2c(struct ddb_port *port)
{
 struct ddb *dev = port->dev;
 u32 i;

 for (i = 0; i < dev->i2c_num; i++) {
  if (dev->i2c[i].link == port->lnr) {
   port->i2c = &dev->i2c[i];
   return 1;
  }
 }
 return 0;
}
