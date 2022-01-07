
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct obj_mlme {int id; int address; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int DOT11_OID_DISASSOCIATE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (struct obj_mlme*) ;
 struct obj_mlme* kmalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mgt_set_request (int ,int ,int ,struct obj_mlme*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_kick_mac(struct net_device *ndev, struct iw_request_info *info,
   struct sockaddr *awrq, char *extra)
{
 struct obj_mlme *mlme;
 struct sockaddr *addr = (struct sockaddr *) extra;
 int rvalue;

 if (addr->sa_family != ARPHRD_ETHER)
  return -EOPNOTSUPP;

 mlme = kmalloc(sizeof (struct obj_mlme), GFP_KERNEL);
 if (mlme == ((void*)0))
  return -ENOMEM;


 memcpy(mlme->address, addr->sa_data, ETH_ALEN);
 mlme->id = -1;
 rvalue =
     mgt_set_request(netdev_priv(ndev), DOT11_OID_DISASSOCIATE, 0, mlme);

 kfree(mlme);

 return rvalue;
}
