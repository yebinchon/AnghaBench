
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct islpci_acl {scalar_t__ policy; } ;
struct TYPE_5__ {scalar_t__ iw_mode; int mib_sem; scalar_t__ wpa; struct islpci_acl acl; } ;
typedef TYPE_1__ islpci_private ;
typedef scalar_t__ __u32 ;


 int CARD_DEFAULT_MLME_MODE ;
 int DOT11_MLME_EXTENDED ;
 int DOT11_MLME_INTERMEDIATE ;
 int DOT11_OID_MLMEAUTOLEVEL ;
 int EINVAL ;
 int EIO ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ MAC_POLICY_OPEN ;
 scalar_t__ MAC_POLICY_REJECT ;
 int down_write (int *) ;
 scalar_t__ mgt_commit (TYPE_1__*) ;
 int mgt_set (TYPE_1__*,int ,int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int prism54_clear_mac (struct islpci_acl*) ;
 int up_write (int *) ;

__attribute__((used)) static int
prism54_set_policy(struct net_device *ndev, struct iw_request_info *info,
     __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct islpci_acl *acl = &priv->acl;
 u32 mlmeautolevel;

 prism54_clear_mac(acl);

 if ((*uwrq < MAC_POLICY_OPEN) || (*uwrq > MAC_POLICY_REJECT))
  return -EINVAL;

 down_write(&priv->mib_sem);

 acl->policy = *uwrq;


 if ((priv->iw_mode == IW_MODE_MASTER) &&
     (acl->policy != MAC_POLICY_OPEN))
  mlmeautolevel = DOT11_MLME_INTERMEDIATE;
 else
  mlmeautolevel = CARD_DEFAULT_MLME_MODE;
 if (priv->wpa)
  mlmeautolevel = DOT11_MLME_EXTENDED;
 mgt_set(priv, DOT11_OID_MLMEAUTOLEVEL, &mlmeautolevel);

 if (mgt_commit(priv)) {
  up_write(&priv->mib_sem);
  return -EIO;
 }
 up_write(&priv->mib_sem);

 return 0;
}
