
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_4__ {int ioc; } ;
struct TYPE_5__ {TYPE_1__ ioceth; } ;
struct bnad {int pcidev; int bna_lock; TYPE_2__ bna; } ;
struct TYPE_6__ {int fw_ver; } ;
struct bfa_ioc_attr {TYPE_3__ adapter_attr; } ;


 int BNAD_NAME ;
 int BNAD_VERSION ;
 int GFP_KERNEL ;
 int bfa_nw_ioc_get_attr (int *,struct bfa_ioc_attr*) ;
 int kfree (struct bfa_ioc_attr*) ;
 struct bfa_ioc_attr* kzalloc (int,int ) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
bnad_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct bnad *bnad = netdev_priv(netdev);
 struct bfa_ioc_attr *ioc_attr;
 unsigned long flags;

 strlcpy(drvinfo->driver, BNAD_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, BNAD_VERSION, sizeof(drvinfo->version));

 ioc_attr = kzalloc(sizeof(*ioc_attr), GFP_KERNEL);
 if (ioc_attr) {
  spin_lock_irqsave(&bnad->bna_lock, flags);
  bfa_nw_ioc_get_attr(&bnad->bna.ioceth.ioc, ioc_attr);
  spin_unlock_irqrestore(&bnad->bna_lock, flags);

  strlcpy(drvinfo->fw_version, ioc_attr->adapter_attr.fw_ver,
   sizeof(drvinfo->fw_version));
  kfree(ioc_attr);
 }

 strlcpy(drvinfo->bus_info, pci_name(bnad->pcidev),
  sizeof(drvinfo->bus_info));
}
