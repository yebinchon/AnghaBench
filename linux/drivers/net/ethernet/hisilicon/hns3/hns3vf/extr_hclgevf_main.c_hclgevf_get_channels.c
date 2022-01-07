
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rss_size; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclgevf_dev {int dummy; } ;
struct ethtool_channels {int combined_count; scalar_t__ max_other; scalar_t__ other_count; int max_combined; } ;


 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_get_max_channels (struct hclgevf_dev*) ;

__attribute__((used)) static void hclgevf_get_channels(struct hnae3_handle *handle,
     struct ethtool_channels *ch)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 ch->max_combined = hclgevf_get_max_channels(hdev);
 ch->other_count = 0;
 ch->max_other = 0;
 ch->combined_count = handle->kinfo.rss_size;
}
