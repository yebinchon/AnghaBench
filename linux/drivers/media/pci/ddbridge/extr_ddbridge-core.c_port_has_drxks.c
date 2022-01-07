
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ddb_port {TYPE_1__* i2c; } ;
struct TYPE_2__ {int adap; } ;


 scalar_t__ i2c_read (int *,int,int *) ;

__attribute__((used)) static int port_has_drxks(struct ddb_port *port)
{
 u8 val;

 if (i2c_read(&port->i2c->adap, 0x29, &val) < 0)
  return 0;
 if (i2c_read(&port->i2c->adap, 0x2a, &val) < 0)
  return 0;
 return 1;
}
