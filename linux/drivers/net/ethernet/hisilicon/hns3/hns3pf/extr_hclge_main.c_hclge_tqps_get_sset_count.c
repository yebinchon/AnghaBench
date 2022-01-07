
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_knic_private_info {int num_tqps; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;



__attribute__((used)) static int hclge_tqps_get_sset_count(struct hnae3_handle *handle, int stringset)
{
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;


 return kinfo->num_tqps * (2);
}
