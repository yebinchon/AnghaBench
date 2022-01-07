
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ddb_port {TYPE_1__* i2c; } ;
struct TYPE_2__ {int adap; } ;


 scalar_t__ i2c_read_reg16 (int *,int,int,int *) ;

__attribute__((used)) static int port_has_stv0900_aa(struct ddb_port *port, u8 *id)
{
 if (i2c_read_reg16(&port->i2c->adap, 0x68, 0xf100, id) < 0)
  return 0;
 return 1;
}
