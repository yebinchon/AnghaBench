
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mac_addr ) (struct hnae_handle*,scalar_t__) ;} ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int const*) ;
 int memcpy (int ,scalar_t__,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,scalar_t__) ;

__attribute__((used)) static int hns_nic_net_set_mac_address(struct net_device *ndev, void *p)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 struct sockaddr *mac_addr = p;
 int ret;

 if (!mac_addr || !is_valid_ether_addr((const u8 *)mac_addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = h->dev->ops->set_mac_addr(h, mac_addr->sa_data);
 if (ret) {
  netdev_err(ndev, "set_mac_address fail, ret=%d!\n", ret);
  return ret;
 }

 memcpy(ndev->dev_addr, mac_addr->sa_data, ndev->addr_len);

 return 0;
}
