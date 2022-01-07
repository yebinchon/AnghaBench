
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rocker_port {int dummy; } ;


 int rocker_cmd_exec (struct rocker_port*,int,int ,int *,int ,int *) ;
 int rocker_cmd_get_port_settings_mode_proc ;
 int rocker_cmd_get_port_settings_prep ;

__attribute__((used)) static int rocker_cmd_get_port_settings_mode(struct rocker_port *rocker_port,
          u8 *p_mode)
{
 return rocker_cmd_exec(rocker_port, 0,
          rocker_cmd_get_port_settings_prep, ((void*)0),
          rocker_cmd_get_port_settings_mode_proc, p_mode);
}
