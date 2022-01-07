
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rss_size; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct ethtool_channels {int other_count; int max_other; int combined_count; int max_combined; } ;


 int hclge_get_max_channels (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_get_channels(struct hnae3_handle *handle,
          struct ethtool_channels *ch)
{
 ch->max_combined = hclge_get_max_channels(handle);
 ch->other_count = 1;
 ch->max_other = 1;
 ch->combined_count = handle->kinfo.rss_size;
}
