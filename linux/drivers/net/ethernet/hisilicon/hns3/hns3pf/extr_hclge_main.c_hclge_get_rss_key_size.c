
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae3_handle {int dummy; } ;


 int HCLGE_RSS_KEY_SIZE ;

__attribute__((used)) static u32 hclge_get_rss_key_size(struct hnae3_handle *handle)
{
 return HCLGE_RSS_KEY_SIZE;
}
