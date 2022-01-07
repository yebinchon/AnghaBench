
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int __scif_get_port (scalar_t__,scalar_t__) ;

int scif_rsrv_port(u16 port)
{
 return __scif_get_port(port, port + 1);
}
