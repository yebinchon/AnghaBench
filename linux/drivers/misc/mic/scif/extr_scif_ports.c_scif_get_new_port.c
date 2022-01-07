
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCIF_PORT_COUNT ;
 scalar_t__ SCIF_PORT_RSVD ;
 int __scif_get_port (scalar_t__,int ) ;

int scif_get_new_port(void)
{
 return __scif_get_port(SCIF_PORT_RSVD + 1, SCIF_PORT_COUNT);
}
