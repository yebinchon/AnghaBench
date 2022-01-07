
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int node_dead; int node; } ;


 int CPUHP_VIRT_NET_DEAD ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int virtionet_online ;

__attribute__((used)) static void virtnet_cpu_notif_remove(struct virtnet_info *vi)
{
 cpuhp_state_remove_instance_nocalls(virtionet_online, &vi->node);
 cpuhp_state_remove_instance_nocalls(CPUHP_VIRT_NET_DEAD,
         &vi->node_dead);
}
