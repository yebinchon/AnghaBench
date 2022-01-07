
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ofdpa_port {TYPE_2__* bridge_dev; } ;
struct TYPE_4__ {TYPE_1__* rtnl_link_ops; } ;
struct TYPE_3__ {int kind; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static bool ofdpa_port_is_slave(const struct ofdpa_port *ofdpa_port,
    const char *kind)
{
 return ofdpa_port->bridge_dev &&
  !strcmp(ofdpa_port->bridge_dev->rtnl_link_ops->kind, kind);
}
