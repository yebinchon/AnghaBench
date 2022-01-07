
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct napi_struct {int dummy; } ;


 scalar_t__ napi_complete_done (struct napi_struct*,int) ;
 scalar_t__ unlikely (int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb_prepare (struct virtqueue*) ;
 int virtqueue_napi_schedule (struct napi_struct*,struct virtqueue*) ;
 int virtqueue_poll (struct virtqueue*,int) ;

__attribute__((used)) static void virtqueue_napi_complete(struct napi_struct *napi,
        struct virtqueue *vq, int processed)
{
 int opaque;

 opaque = virtqueue_enable_cb_prepare(vq);
 if (napi_complete_done(napi, processed)) {
  if (unlikely(virtqueue_poll(vq, opaque)))
   virtqueue_napi_schedule(napi, vq);
 } else {
  virtqueue_disable_cb(vq);
 }
}
