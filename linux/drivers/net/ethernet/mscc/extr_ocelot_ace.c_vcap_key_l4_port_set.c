
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vcap_data {int dummy; } ;
struct ocelot_vcap_udp_tcp {int mask; int value; } ;


 int vcap_key_set (struct vcap_data*,int ,int,int ,int ) ;

__attribute__((used)) static void vcap_key_l4_port_set(struct vcap_data *data, u32 offset,
     struct ocelot_vcap_udp_tcp *port)
{
 vcap_key_set(data, offset, 16, port->value, port->mask);
}
