
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int islpci_private ;


 scalar_t__ ARPHRD_ETHER ;
 int DOT11_OID_BSSID ;
 int EINPROGRESS ;
 int EINVAL ;
 int ETH_ALEN ;
 int memcpy (char*,int ,int ) ;
 int mgt_set_request (int *,int ,int ,char**) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_wap(struct net_device *ndev, struct iw_request_info *info,
  struct sockaddr *awrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 char bssid[6];
 int rvalue;

 if (awrq->sa_family != ARPHRD_ETHER)
  return -EINVAL;


 memcpy(&bssid[0], awrq->sa_data, ETH_ALEN);


 rvalue = mgt_set_request(priv, DOT11_OID_BSSID, 0, &bssid);

 return (rvalue ? rvalue : -EINPROGRESS);
}
