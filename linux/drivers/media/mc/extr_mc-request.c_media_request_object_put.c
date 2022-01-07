
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request_object {int kref; } ;


 int kref_put (int *,int ) ;
 int media_request_object_release ;

void media_request_object_put(struct media_request_object *obj)
{
 kref_put(&obj->kref, media_request_object_release);
}
