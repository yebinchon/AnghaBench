
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dummy; } ;


 int ofdpa_port_is_slave (struct ofdpa_port const*,char*) ;

__attribute__((used)) static bool ofdpa_port_is_ovsed(const struct ofdpa_port *ofdpa_port)
{
 return ofdpa_port_is_slave(ofdpa_port, "openvswitch");
}
