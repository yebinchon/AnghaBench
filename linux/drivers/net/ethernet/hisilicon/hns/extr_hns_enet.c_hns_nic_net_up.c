
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ phydev; int dev_addr; } ;
struct hns_nic_priv {int state; int service_timer; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mac_addr ) (struct hnae_handle*,int ) ;int (* start ) (struct hnae_handle*) ;} ;


 int NIC_STATE_DOWN ;
 scalar_t__ SERVICE_TIMER_HZ ;
 int clear_bit (int ,int *) ;
 int hns_nic_free_irq (int,struct hns_nic_priv*) ;
 int hns_nic_init_irq (struct hns_nic_priv*) ;
 int hns_nic_ring_close (struct net_device*,int) ;
 int hns_nic_ring_open (struct net_device*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_start (scalar_t__) ;
 int set_bit (int ,int *) ;
 int stub1 (struct hnae_handle*,int ) ;
 int stub2 (struct hnae_handle*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hns_nic_net_up(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 int i, j;
 int ret;

 if (!test_bit(NIC_STATE_DOWN, &priv->state))
  return 0;

 ret = hns_nic_init_irq(priv);
 if (ret != 0) {
  netdev_err(ndev, "hns init irq failed! ret=%d\n", ret);
  return ret;
 }

 for (i = 0; i < h->q_num * 2; i++) {
  ret = hns_nic_ring_open(ndev, i);
  if (ret)
   goto out_has_some_queues;
 }

 ret = h->dev->ops->set_mac_addr(h, ndev->dev_addr);
 if (ret)
  goto out_set_mac_addr_err;

 ret = h->dev->ops->start ? h->dev->ops->start(h) : 0;
 if (ret)
  goto out_start_err;

 if (ndev->phydev)
  phy_start(ndev->phydev);

 clear_bit(NIC_STATE_DOWN, &priv->state);
 (void)mod_timer(&priv->service_timer, jiffies + SERVICE_TIMER_HZ);

 return 0;

out_start_err:
 netif_stop_queue(ndev);
out_set_mac_addr_err:
out_has_some_queues:
 for (j = i - 1; j >= 0; j--)
  hns_nic_ring_close(ndev, j);

 hns_nic_free_irq(h->q_num, priv);
 set_bit(NIC_STATE_DOWN, &priv->state);

 return ret;
}
