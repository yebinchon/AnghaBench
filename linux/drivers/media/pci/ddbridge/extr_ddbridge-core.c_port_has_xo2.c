
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ddb_port {TYPE_1__* i2c; } ;
struct TYPE_2__ {int adap; } ;


 scalar_t__ i2c_io (int *,int,int*,int,int*,int) ;

__attribute__((used)) static int port_has_xo2(struct ddb_port *port, u8 *type, u8 *id)
{
 u8 probe[1] = { 0x00 }, data[4];

 if (i2c_io(&port->i2c->adap, 0x10, probe, 1, data, 4))
  return 0;
 if (data[0] == 'D' && data[1] == 'F') {
  *id = data[2];
  *type = 1;
  return 1;
 }
 if (data[0] == 'C' && data[1] == 'I') {
  *id = data[2];
  *type = 2;
  return 1;
 }
 return 0;
}
