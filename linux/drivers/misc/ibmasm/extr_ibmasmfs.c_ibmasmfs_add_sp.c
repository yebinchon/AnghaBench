
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int node; } ;


 int list_add (int *,int *) ;
 int service_processors ;

void ibmasmfs_add_sp(struct service_processor *sp)
{
 list_add(&sp->node, &service_processors);
}
