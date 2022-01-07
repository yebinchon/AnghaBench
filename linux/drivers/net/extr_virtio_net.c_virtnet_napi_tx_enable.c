
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtnet_info {int affinity_hint_set; } ;
struct napi_struct {scalar_t__ weight; } ;


 void virtnet_napi_enable (struct virtqueue*,struct napi_struct*) ;

__attribute__((used)) static void virtnet_napi_tx_enable(struct virtnet_info *vi,
       struct virtqueue *vq,
       struct napi_struct *napi)
{
 if (!napi->weight)
  return;




 if (!vi->affinity_hint_set) {
  napi->weight = 0;
  return;
 }

 return virtnet_napi_enable(vq, napi);
}
