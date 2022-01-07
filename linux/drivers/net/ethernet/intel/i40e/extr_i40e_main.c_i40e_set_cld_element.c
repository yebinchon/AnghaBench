
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct i40e_cloud_filter {scalar_t__ n_proto; scalar_t__ tenant_id; int vlan_id; int dst_ipv4; int * dst_ipv6; int src_mac; int dst_mac; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_6__ {TYPE_2__ v4; TYPE_1__ raw_v6; } ;
struct i40e_aqc_cloud_filters_element_data {int inner_vlan; TYPE_3__ ipaddr; int inner_mac; int outer_mac; } ;
typedef int ipa ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 int IPV6_MAX_INDEX ;
 int be32_to_cpu (int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct i40e_aqc_cloud_filters_element_data*,int ,int) ;
 int ntohs (int ) ;

__attribute__((used)) static inline void
i40e_set_cld_element(struct i40e_cloud_filter *filter,
       struct i40e_aqc_cloud_filters_element_data *cld)
{
 int i, j;
 u32 ipa;

 memset(cld, 0, sizeof(*cld));
 ether_addr_copy(cld->outer_mac, filter->dst_mac);
 ether_addr_copy(cld->inner_mac, filter->src_mac);

 if (filter->n_proto != ETH_P_IP && filter->n_proto != ETH_P_IPV6)
  return;

 if (filter->n_proto == ETH_P_IPV6) {

  for (i = 0, j = 0; i < ARRAY_SIZE(filter->dst_ipv6);
       i++, j += 2) {
   ipa = be32_to_cpu(filter->dst_ipv6[(ARRAY_SIZE(filter->dst_ipv6) - 1) - i]);
   ipa = cpu_to_le32(ipa);
   memcpy(&cld->ipaddr.raw_v6.data[j], &ipa, sizeof(ipa));
  }
 } else {
  ipa = be32_to_cpu(filter->dst_ipv4);
  memcpy(&cld->ipaddr.v4.data, &ipa, sizeof(ipa));
 }

 cld->inner_vlan = cpu_to_le16(ntohs(filter->vlan_id));




 if (filter->tenant_id)
  return;
}
