
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request_object {int completed; int kref; int list; int * priv; int * req; int * ops; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;

void media_request_object_init(struct media_request_object *obj)
{
 obj->ops = ((void*)0);
 obj->req = ((void*)0);
 obj->priv = ((void*)0);
 obj->completed = 0;
 INIT_LIST_HEAD(&obj->list);
 kref_init(&obj->kref);
}
