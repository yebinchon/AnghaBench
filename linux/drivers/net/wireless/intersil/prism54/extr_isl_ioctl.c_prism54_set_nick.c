
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct TYPE_3__ {int mib_sem; int nickname; } ;
typedef TYPE_1__ islpci_private ;


 int E2BIG ;
 int IW_ESSID_MAX_SIZE ;
 int down_write (int *) ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int
prism54_set_nick(struct net_device *ndev, struct iw_request_info *info,
   struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);

 if (dwrq->length > IW_ESSID_MAX_SIZE)
  return -E2BIG;

 down_write(&priv->mib_sem);
 memset(priv->nickname, 0, sizeof (priv->nickname));
 memcpy(priv->nickname, extra, dwrq->length);
 up_write(&priv->mib_sem);

 return 0;
}
