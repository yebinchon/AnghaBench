
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;


 int rocker_cmd_exec (struct rocker_port*,int,int ,unsigned char*,int *,int *) ;
 int rocker_cmd_set_port_settings_macaddr_prep ;

__attribute__((used)) static int rocker_cmd_set_port_settings_macaddr(struct rocker_port *rocker_port,
      unsigned char *macaddr)
{
 return rocker_cmd_exec(rocker_port, 0,
          rocker_cmd_set_port_settings_macaddr_prep,
          macaddr, ((void*)0), ((void*)0));
}
