
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;


 int rocker_cmd_exec (struct rocker_port*,int,int ,int*,int *,int *) ;
 int rocker_cmd_set_port_settings_mtu_prep ;

__attribute__((used)) static int rocker_cmd_set_port_settings_mtu(struct rocker_port *rocker_port,
         int mtu)
{
 return rocker_cmd_exec(rocker_port, 0,
          rocker_cmd_set_port_settings_mtu_prep,
          &mtu, ((void*)0), ((void*)0));
}
