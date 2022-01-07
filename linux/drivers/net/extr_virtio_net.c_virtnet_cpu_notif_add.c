
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int node; int node_dead; } ;


 int CPUHP_VIRT_NET_DEAD ;
 int cpuhp_state_add_instance_nocalls (int ,int *) ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int virtionet_online ;

__attribute__((used)) static int virtnet_cpu_notif_add(struct virtnet_info *vi)
{
 int ret;

 ret = cpuhp_state_add_instance_nocalls(virtionet_online, &vi->node);
 if (ret)
  return ret;
 ret = cpuhp_state_add_instance_nocalls(CPUHP_VIRT_NET_DEAD,
            &vi->node_dead);
 if (!ret)
  return ret;
 cpuhp_state_remove_instance_nocalls(virtionet_online, &vi->node);
 return ret;
}
