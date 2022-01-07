
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qede_dev {int arfs; } ;
struct qede_arfs_fltr_node {int rxq_id; } ;


 int EPERM ;
 int QEDE_ARFS_BUCKET_HEAD (struct qede_dev*,int ) ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int qede_configure_arfs_fltr (struct qede_dev*,struct qede_arfs_fltr_node*,int ,int) ;
 int qede_dequeue_fltr_and_config_searcher (struct qede_dev*,struct qede_arfs_fltr_node*) ;
 struct qede_arfs_fltr_node* qede_get_arfs_fltr_by_loc (int ,int ) ;
 int qede_poll_arfs_filter_config (struct qede_dev*,struct qede_arfs_fltr_node*) ;

int qede_delete_flow_filter(struct qede_dev *edev, u64 cookie)
{
 struct qede_arfs_fltr_node *fltr = ((void*)0);
 int rc = -EPERM;

 __qede_lock(edev);
 if (!edev->arfs)
  goto unlock;

 fltr = qede_get_arfs_fltr_by_loc(QEDE_ARFS_BUCKET_HEAD(edev, 0),
      cookie);
 if (!fltr)
  goto unlock;

 qede_configure_arfs_fltr(edev, fltr, fltr->rxq_id, 0);

 rc = qede_poll_arfs_filter_config(edev, fltr);
 if (rc == 0)
  qede_dequeue_fltr_and_config_searcher(edev, fltr);

unlock:
 __qede_unlock(edev);
 return rc;
}
