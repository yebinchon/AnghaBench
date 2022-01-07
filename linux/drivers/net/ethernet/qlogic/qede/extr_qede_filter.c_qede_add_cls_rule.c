
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {int dummy; } ;
struct TYPE_5__ {int (* build_hdr ) (TYPE_2__*,void*) ;} ;
struct qede_arfs_fltr_node {int buf_len; int rxq_id; void* data; TYPE_2__ tuple; int sw_id; } ;
struct ethtool_rx_flow_spec {int location; } ;
struct ethtool_rxnfc {struct ethtool_rx_flow_spec fs; } ;
struct TYPE_4__ {int arfs_fltr_bmap; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int kfree (struct qede_arfs_fltr_node*) ;
 void* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct qede_arfs_tuple*,int) ;
 int qede_configure_arfs_fltr (struct qede_dev*,struct qede_arfs_fltr_node*,int ,int) ;
 int qede_enqueue_fltr_and_config_searcher (struct qede_dev*,struct qede_arfs_fltr_node*,int ) ;
 scalar_t__ qede_flow_find_fltr (struct qede_dev*,struct qede_arfs_tuple*) ;
 int qede_flow_get_min_header_size (struct qede_arfs_tuple*) ;
 int qede_flow_set_destination (struct qede_dev*,struct qede_arfs_fltr_node*,struct ethtool_rx_flow_spec*) ;
 int qede_flow_spec_to_rule (struct qede_dev*,struct qede_arfs_tuple*,struct ethtool_rx_flow_spec*) ;
 int qede_poll_arfs_filter_config (struct qede_dev*,struct qede_arfs_fltr_node*) ;
 int set_bit (int ,int ) ;
 int stub1 (TYPE_2__*,void*) ;

int qede_add_cls_rule(struct qede_dev *edev, struct ethtool_rxnfc *info)
{
 struct ethtool_rx_flow_spec *fsp = &info->fs;
 struct qede_arfs_fltr_node *n;
 struct qede_arfs_tuple t;
 int min_hlen, rc;

 __qede_lock(edev);

 if (!edev->arfs) {
  rc = -EPERM;
  goto unlock;
 }


 rc = qede_flow_spec_to_rule(edev, &t, fsp);
 if (rc)
  goto unlock;

 if (qede_flow_find_fltr(edev, &t)) {
  rc = -EINVAL;
  goto unlock;
 }

 n = kzalloc(sizeof(*n), GFP_KERNEL);
 if (!n) {
  rc = -ENOMEM;
  goto unlock;
 }

 min_hlen = qede_flow_get_min_header_size(&t);
 n->data = kzalloc(min_hlen, GFP_KERNEL);
 if (!n->data) {
  kfree(n);
  rc = -ENOMEM;
  goto unlock;
 }

 n->sw_id = fsp->location;
 set_bit(n->sw_id, edev->arfs->arfs_fltr_bmap);
 n->buf_len = min_hlen;

 memcpy(&n->tuple, &t, sizeof(n->tuple));

 qede_flow_set_destination(edev, n, fsp);


 n->tuple.build_hdr(&n->tuple, n->data);

 rc = qede_enqueue_fltr_and_config_searcher(edev, n, 0);
 if (rc)
  goto unlock;

 qede_configure_arfs_fltr(edev, n, n->rxq_id, 1);
 rc = qede_poll_arfs_filter_config(edev, n);
unlock:
 __qede_unlock(edev);

 return rc;
}
