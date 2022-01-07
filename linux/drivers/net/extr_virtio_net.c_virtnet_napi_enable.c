
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct napi_struct {int dummy; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int napi_enable (struct napi_struct*) ;
 int virtqueue_napi_schedule (struct napi_struct*,struct virtqueue*) ;

__attribute__((used)) static void virtnet_napi_enable(struct virtqueue *vq, struct napi_struct *napi)
{
 napi_enable(napi);





 local_bh_disable();
 virtqueue_napi_schedule(napi, vq);
 local_bh_enable();
}
