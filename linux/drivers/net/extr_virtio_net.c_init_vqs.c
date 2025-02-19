
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int dummy; } ;


 int get_online_cpus () ;
 int put_online_cpus () ;
 int virtnet_alloc_queues (struct virtnet_info*) ;
 int virtnet_find_vqs (struct virtnet_info*) ;
 int virtnet_free_queues (struct virtnet_info*) ;
 int virtnet_set_affinity (struct virtnet_info*) ;

__attribute__((used)) static int init_vqs(struct virtnet_info *vi)
{
 int ret;


 ret = virtnet_alloc_queues(vi);
 if (ret)
  goto err;

 ret = virtnet_find_vqs(vi);
 if (ret)
  goto err_free;

 get_online_cpus();
 virtnet_set_affinity(vi);
 put_online_cpus();

 return 0;

err_free:
 virtnet_free_queues(vi);
err:
 return ret;
}
