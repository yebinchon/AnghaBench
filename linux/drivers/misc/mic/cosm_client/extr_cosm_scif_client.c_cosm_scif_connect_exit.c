
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * client_epd ;
 int scif_close (int *) ;

__attribute__((used)) static void cosm_scif_connect_exit(void)
{
 if (client_epd) {
  scif_close(client_epd);
  client_epd = ((void*)0);
 }
}
