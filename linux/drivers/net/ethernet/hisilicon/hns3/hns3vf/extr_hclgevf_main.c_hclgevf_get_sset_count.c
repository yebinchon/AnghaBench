
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int ETH_SS_TEST ;
 int hclgevf_tqps_get_sset_count (struct hnae3_handle*,int) ;

__attribute__((used)) static int hclgevf_get_sset_count(struct hnae3_handle *handle, int strset)
{
 if (strset == ETH_SS_TEST)
  return -EOPNOTSUPP;
 else if (strset == ETH_SS_STATS)
  return hclgevf_tqps_get_sset_count(handle, strset);

 return 0;
}
