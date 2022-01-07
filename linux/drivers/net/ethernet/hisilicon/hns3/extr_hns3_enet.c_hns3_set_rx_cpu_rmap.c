
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_cpu_rmap; } ;
struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; } ;
struct hns3_enet_tqp_vector {int vector_irq; } ;


 int ENOMEM ;
 int alloc_irq_cpu_rmap (int) ;
 int hns3_free_rx_cpu_rmap (struct net_device*) ;
 int irq_cpu_rmap_add (int ,int ) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hns3_set_rx_cpu_rmap(struct net_device *netdev)
{
 return 0;
}
