
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request {int kref; } ;


 int kref_put (int *,int ) ;
 int media_request_release ;

void media_request_put(struct media_request *req)
{
 kref_put(&req->kref, media_request_release);
}
