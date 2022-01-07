
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt_en_dev {int pdev; struct net_device* net; int flags; int * en_ops; } ;
struct bnxt {int flags; struct bnxt_en_dev* edev; int pdev; } ;


 int BNXT_EN_FLAG_ROCEV1_CAP ;
 int BNXT_EN_FLAG_ROCEV2_CAP ;
 int BNXT_FLAG_ROCEV1_CAP ;
 int BNXT_FLAG_ROCEV2_CAP ;
 int ENOMEM ;
 struct bnxt_en_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int bnxt_en_ops_tbl ;
 struct bnxt_en_dev* kzalloc (int,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

struct bnxt_en_dev *bnxt_ulp_probe(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_en_dev *edev;

 edev = bp->edev;
 if (!edev) {
  edev = kzalloc(sizeof(*edev), GFP_KERNEL);
  if (!edev)
   return ERR_PTR(-ENOMEM);
  edev->en_ops = &bnxt_en_ops_tbl;
  if (bp->flags & BNXT_FLAG_ROCEV1_CAP)
   edev->flags |= BNXT_EN_FLAG_ROCEV1_CAP;
  if (bp->flags & BNXT_FLAG_ROCEV2_CAP)
   edev->flags |= BNXT_EN_FLAG_ROCEV2_CAP;
  edev->net = dev;
  edev->pdev = bp->pdev;
  bp->edev = edev;
 }
 return bp->edev;
}
