
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int dst_port; } ;
struct TYPE_6__ {TYPE_1__ tcp_spec; } ;
struct TYPE_8__ {scalar_t__ action_meta; int action; TYPE_2__ data; } ;
struct iavf_cloud_filter {TYPE_4__ f; } ;
struct iavf_adapter {scalar_t__ num_tc; TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int EINVAL ;
 int VIRTCHNL_ACTION_TC_REDIRECT ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int iavf_handle_tclass(struct iavf_adapter *adapter, u32 tc,
         struct iavf_cloud_filter *filter)
{
 if (tc == 0)
  return 0;
 if (tc < adapter->num_tc) {
  if (!filter->f.data.tcp_spec.dst_port) {
   dev_err(&adapter->pdev->dev,
    "Specify destination port to redirect to traffic class other than TC0\n");
   return -EINVAL;
  }
 }

 filter->f.action = VIRTCHNL_ACTION_TC_REDIRECT;
 filter->f.action_meta = tc;
 return 0;
}
