
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtchnl_l4_spec {int dummy; } ;
struct TYPE_5__ {int tcp_spec; } ;
struct TYPE_6__ {int flow_type; TYPE_2__ mask; } ;
struct iavf_cloud_filter {int add; int list; TYPE_3__ f; int cookie; } ;
struct iavf_adapter {int crit_section; int cloud_filter_list_lock; int aq_required; int num_cloud_filters; int cloud_filter_list; TYPE_1__* pdev; int netdev; } ;
struct flow_cls_offload {int cookie; int classid; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_ADD_CLOUD_FILTER ;
 int VIRTCHNL_TCP_V4_FLOW ;
 int __IAVF_IN_CRITICAL_TASK ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int iavf_handle_tclass (struct iavf_adapter*,int,struct iavf_cloud_filter*) ;
 int iavf_parse_cls_flower (struct iavf_adapter*,struct flow_cls_offload*,struct iavf_cloud_filter*) ;
 int kfree (struct iavf_cloud_filter*) ;
 struct iavf_cloud_filter* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tc_classid_to_hwtc (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int iavf_configure_clsflower(struct iavf_adapter *adapter,
        struct flow_cls_offload *cls_flower)
{
 int tc = tc_classid_to_hwtc(adapter->netdev, cls_flower->classid);
 struct iavf_cloud_filter *filter = ((void*)0);
 int err = -EINVAL, count = 50;

 if (tc < 0) {
  dev_err(&adapter->pdev->dev, "Invalid traffic class\n");
  return -EINVAL;
 }

 filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 if (!filter)
  return -ENOMEM;

 while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
    &adapter->crit_section)) {
  if (--count == 0)
   goto err;
  udelay(1);
 }

 filter->cookie = cls_flower->cookie;


 memset(&filter->f.mask.tcp_spec, 0, sizeof(struct virtchnl_l4_spec));

 filter->f.flow_type = VIRTCHNL_TCP_V4_FLOW;
 err = iavf_parse_cls_flower(adapter, cls_flower, filter);
 if (err < 0)
  goto err;

 err = iavf_handle_tclass(adapter, tc, filter);
 if (err < 0)
  goto err;


 spin_lock_bh(&adapter->cloud_filter_list_lock);
 list_add_tail(&filter->list, &adapter->cloud_filter_list);
 adapter->num_cloud_filters++;
 filter->add = 1;
 adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 spin_unlock_bh(&adapter->cloud_filter_list_lock);
err:
 if (err)
  kfree(filter);

 clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 return err;
}
