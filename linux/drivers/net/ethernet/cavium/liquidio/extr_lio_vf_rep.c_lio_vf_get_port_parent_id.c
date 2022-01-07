
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_phys_item_id {int id; int id_len; } ;
struct net_device {int dummy; } ;
struct lio_vf_rep_desc {struct net_device* parent_ndev; } ;
struct TYPE_2__ {int hw_addr; } ;
struct lio {TYPE_1__ linfo; } ;


 int ETH_ALEN ;
 struct lio* GET_LIO (struct net_device*) ;
 int ether_addr_copy (int ,void*) ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lio_vf_get_port_parent_id(struct net_device *dev,
         struct netdev_phys_item_id *ppid)
{
 struct lio_vf_rep_desc *vf_rep = netdev_priv(dev);
 struct net_device *parent_ndev = vf_rep->parent_ndev;
 struct lio *lio = GET_LIO(parent_ndev);

 ppid->id_len = ETH_ALEN;
 ether_addr_copy(ppid->id, (void *)&lio->linfo.hw_addr + 2);

 return 0;
}
