
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int is_promisc; int set_multicast_list_queue; } ;
typedef TYPE_1__ local_info_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void hostap_set_multicast_list(struct net_device *dev)
{
}
