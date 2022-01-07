
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 size_t ARRAY_SIZE (char**) ;
 char** efx_udp_tunnel_type_names ;
 int snprintf (char*,size_t,char*,...) ;

void efx_get_udp_tunnel_type_name(u16 type, char *buf, size_t buflen)
{
 if (type < ARRAY_SIZE(efx_udp_tunnel_type_names) &&
     efx_udp_tunnel_type_names[type] != ((void*)0))
  snprintf(buf, buflen, "%s", efx_udp_tunnel_type_names[type]);
 else
  snprintf(buf, buflen, "type %d", type);
}
