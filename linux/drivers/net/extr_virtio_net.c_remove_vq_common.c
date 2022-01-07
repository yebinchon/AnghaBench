
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {TYPE_2__* vdev; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int (* reset ) (TYPE_2__*) ;} ;


 int free_receive_bufs (struct virtnet_info*) ;
 int free_receive_page_frags (struct virtnet_info*) ;
 int free_unused_bufs (struct virtnet_info*) ;
 int stub1 (TYPE_2__*) ;
 int virtnet_del_vqs (struct virtnet_info*) ;

__attribute__((used)) static void remove_vq_common(struct virtnet_info *vi)
{
 vi->vdev->config->reset(vi->vdev);


 free_unused_bufs(vi);

 free_receive_bufs(vi);

 free_receive_page_frags(vi);

 virtnet_del_vqs(vi);
}
