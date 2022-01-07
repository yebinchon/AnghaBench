
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int refcnt; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct mei_me_client *mei_me_cl_get(struct mei_me_client *me_cl)
{
 if (me_cl && kref_get_unless_zero(&me_cl->refcnt))
  return me_cl;

 return ((void*)0);
}
