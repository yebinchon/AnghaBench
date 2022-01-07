
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int refcnt; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;

void mei_me_cl_init(struct mei_me_client *me_cl)
{
 INIT_LIST_HEAD(&me_cl->list);
 kref_init(&me_cl->refcnt);
}
