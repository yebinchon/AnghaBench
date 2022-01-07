
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct bdx_priv {int dummy; } ;


 int ENTER ;
 int RET (int ) ;
 int bdx_restore_mac (struct net_device*,struct bdx_priv*) ;
 int memcpy (int ,int ,int ) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bdx_set_mac(struct net_device *ndev, void *p)
{
 struct bdx_priv *priv = netdev_priv(ndev);
 struct sockaddr *addr = p;

 ENTER;




 memcpy(ndev->dev_addr, addr->sa_data, ndev->addr_len);
 bdx_restore_mac(ndev, priv);
 RET(0);
}
