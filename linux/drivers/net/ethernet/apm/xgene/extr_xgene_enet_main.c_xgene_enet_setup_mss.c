
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_enet_pdata {int mss_lock; int * mss; TYPE_1__* mac_ops; int * mss_refcnt; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* set_mss ) (struct xgene_enet_pdata*,int ,int) ;} ;


 int EBUSY ;
 int NUM_MSS_REG ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static int xgene_enet_setup_mss(struct net_device *ndev, u32 mss)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 int mss_index = -EBUSY;
 int i;

 spin_lock(&pdata->mss_lock);


 for (i = 0; mss_index < 0 && i < NUM_MSS_REG; i++) {
  if (pdata->mss[i] == mss) {
   pdata->mss_refcnt[i]++;
   mss_index = i;
  }
 }


 for (i = 0; mss_index < 0 && i < NUM_MSS_REG; i++) {
  if (!pdata->mss_refcnt[i]) {
   pdata->mss_refcnt[i]++;
   pdata->mac_ops->set_mss(pdata, mss, i);
   pdata->mss[i] = mss;
   mss_index = i;
  }
 }

 spin_unlock(&pdata->mss_lock);

 return mss_index;
}
