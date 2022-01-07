
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_cloud_filter {int del; } ;
struct iavf_adapter {int cloud_filter_list_lock; int aq_required; } ;
struct flow_cls_offload {int cookie; } ;


 int EINVAL ;
 int IAVF_FLAG_AQ_DEL_CLOUD_FILTER ;
 struct iavf_cloud_filter* iavf_find_cf (struct iavf_adapter*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iavf_delete_clsflower(struct iavf_adapter *adapter,
     struct flow_cls_offload *cls_flower)
{
 struct iavf_cloud_filter *filter = ((void*)0);
 int err = 0;

 spin_lock_bh(&adapter->cloud_filter_list_lock);
 filter = iavf_find_cf(adapter, &cls_flower->cookie);
 if (filter) {
  filter->del = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
 } else {
  err = -EINVAL;
 }
 spin_unlock_bh(&adapter->cloud_filter_list_lock);

 return err;
}
