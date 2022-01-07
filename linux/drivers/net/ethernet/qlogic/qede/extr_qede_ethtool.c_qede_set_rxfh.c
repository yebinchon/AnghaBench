
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int num_hwfns; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct qede_dev {scalar_t__ state; int cdev; TYPE_3__* ops; int rss_params_inited; int rss_key; int * rss_ind_table; TYPE_2__ dev_info; } ;
struct qed_update_vport_params {int update_rss_flg; int rss_params; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int (* vport_update ) (int ,struct qed_update_vport_params*) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int QEDE_RSS_INDIR_INITED ;
 int QEDE_RSS_KEY_INITED ;
 scalar_t__ QEDE_STATE_OPEN ;
 int QED_RSS_IND_TABLE_SIZE ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int memcpy (int *,scalar_t__ const*,int ) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_fill_rss_params (struct qede_dev*,int *,int *) ;
 int qede_get_rxfh_key_size (struct net_device*) ;
 int stub1 (int ,struct qed_update_vport_params*) ;
 int vfree (struct qed_update_vport_params*) ;
 struct qed_update_vport_params* vzalloc (int) ;

__attribute__((used)) static int qede_set_rxfh(struct net_device *dev, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct qed_update_vport_params *vport_update_params;
 struct qede_dev *edev = netdev_priv(dev);
 int i, rc = 0;

 if (edev->dev_info.common.num_hwfns > 1) {
  DP_INFO(edev,
   "RSS configuration is not supported for 100G devices\n");
  return -EOPNOTSUPP;
 }

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 if (!indir && !key)
  return 0;

 if (indir) {
  for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++)
   edev->rss_ind_table[i] = indir[i];
  edev->rss_params_inited |= QEDE_RSS_INDIR_INITED;
 }

 if (key) {
  memcpy(&edev->rss_key, key, qede_get_rxfh_key_size(dev));
  edev->rss_params_inited |= QEDE_RSS_KEY_INITED;
 }

 __qede_lock(edev);
 if (edev->state == QEDE_STATE_OPEN) {
  vport_update_params = vzalloc(sizeof(*vport_update_params));
  if (!vport_update_params) {
   __qede_unlock(edev);
   return -ENOMEM;
  }
  qede_fill_rss_params(edev, &vport_update_params->rss_params,
         &vport_update_params->update_rss_flg);
  rc = edev->ops->vport_update(edev->cdev, vport_update_params);
  vfree(vport_update_params);
 }
 __qede_unlock(edev);

 return rc;
}
