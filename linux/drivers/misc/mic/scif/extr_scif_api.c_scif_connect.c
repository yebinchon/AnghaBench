
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_port_id {int dummy; } ;
typedef int scif_epd_t ;


 int __scif_connect (int ,struct scif_port_id*,int) ;

int scif_connect(scif_epd_t epd, struct scif_port_id *dst)
{
 return __scif_connect(epd, dst, 0);
}
