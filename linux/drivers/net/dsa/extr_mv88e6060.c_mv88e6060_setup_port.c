
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6060_priv {int ds; } ;
struct TYPE_4__ {TYPE_1__* cpu_dp; } ;
struct TYPE_3__ {int index; } ;


 int BIT (int) ;
 int PORT_ASSOC_VECTOR ;
 int PORT_CONTROL ;
 int PORT_CONTROL_INGRESS_MODE ;
 int PORT_CONTROL_STATE_FORWARDING ;
 int PORT_CONTROL_TRAILER ;
 int PORT_VLAN_MAP ;
 int PORT_VLAN_MAP_DBNUM_SHIFT ;
 int REG_PORT (int) ;
 scalar_t__ dsa_is_cpu_port (int ,int) ;
 TYPE_2__* dsa_to_port (int ,int) ;
 int dsa_user_ports (int ) ;
 int reg_write (struct mv88e6060_priv*,int,int ,int) ;

__attribute__((used)) static int mv88e6060_setup_port(struct mv88e6060_priv *priv, int p)
{
 int addr = REG_PORT(p);
 int ret;






 ret = reg_write(priv, addr, PORT_CONTROL,
   dsa_is_cpu_port(priv->ds, p) ?
   PORT_CONTROL_TRAILER |
   PORT_CONTROL_INGRESS_MODE |
   PORT_CONTROL_STATE_FORWARDING :
   PORT_CONTROL_STATE_FORWARDING);
 if (ret)
  return ret;






 ret = reg_write(priv, addr, PORT_VLAN_MAP,
   ((p & 0xf) << PORT_VLAN_MAP_DBNUM_SHIFT) |
   (dsa_is_cpu_port(priv->ds, p) ?
    dsa_user_ports(priv->ds) :
    BIT(dsa_to_port(priv->ds, p)->cpu_dp->index)));
 if (ret)
  return ret;






 return reg_write(priv, addr, PORT_ASSOC_VECTOR, BIT(p));
}
