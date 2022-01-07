
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_handle {int dummy; } ;


 int HNS_PPEV2_RSS_IND_TBL_SIZE ;

__attribute__((used)) static u32 hns_ae_get_rss_indir_size(struct hnae_handle *handle)
{
 return HNS_PPEV2_RSS_IND_TBL_SIZE;
}
