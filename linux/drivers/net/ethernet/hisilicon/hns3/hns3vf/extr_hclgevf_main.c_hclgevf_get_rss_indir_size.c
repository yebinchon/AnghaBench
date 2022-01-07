
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae3_handle {int dummy; } ;


 int HCLGEVF_RSS_IND_TBL_SIZE ;

__attribute__((used)) static u32 hclgevf_get_rss_indir_size(struct hnae3_handle *handle)
{
 return HCLGEVF_RSS_IND_TBL_SIZE;
}
