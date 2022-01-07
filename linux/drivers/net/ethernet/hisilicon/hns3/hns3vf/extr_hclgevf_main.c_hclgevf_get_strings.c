
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef scalar_t__ u32 ;
struct hnae3_handle {int dummy; } ;


 scalar_t__ ETH_SS_STATS ;
 char* hclgevf_tqps_get_strings (struct hnae3_handle*,char*) ;

__attribute__((used)) static void hclgevf_get_strings(struct hnae3_handle *handle, u32 strset,
    u8 *data)
{
 u8 *p = (char *)data;

 if (strset == ETH_SS_STATS)
  p = hclgevf_tqps_get_strings(handle, p);
}
