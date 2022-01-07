
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


 int down_read (int *) ;
 int memcpy (char*,int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int strlen (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
prism54_get_nick(struct net_device *ndev, struct iw_request_info *info,
   struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);

 dwrq->length = 0;

 down_read(&priv->mib_sem);
 dwrq->length = strlen(priv->nickname);
 memcpy(extra, priv->nickname, dwrq->length);
 up_read(&priv->mib_sem);

 return 0;
}
