
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int refcnt; } ;


 int kref_put (int *,int ) ;
 int mei_me_cl_release ;

void mei_me_cl_put(struct mei_me_client *me_cl)
{
 if (me_cl)
  kref_put(&me_cl->refcnt, mei_me_cl_release);
}
