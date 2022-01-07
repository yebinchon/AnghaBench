
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;


 int rocker_cmd_exec (struct rocker_port*,int,int ,int*,int *,int *) ;
 int rocker_cmd_set_port_learning_prep ;

int rocker_port_set_learning(struct rocker_port *rocker_port,
        bool learning)
{
 return rocker_cmd_exec(rocker_port, 0,
          rocker_cmd_set_port_learning_prep,
          &learning, ((void*)0), ((void*)0));
}
