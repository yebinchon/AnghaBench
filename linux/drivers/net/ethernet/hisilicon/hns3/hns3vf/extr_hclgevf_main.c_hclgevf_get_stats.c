
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hnae3_handle {int dummy; } ;


 int hclgevf_tqps_get_stats (struct hnae3_handle*,int *) ;

__attribute__((used)) static void hclgevf_get_stats(struct hnae3_handle *handle, u64 *data)
{
 hclgevf_tqps_get_stats(handle, data);
}
