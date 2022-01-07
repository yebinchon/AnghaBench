
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_resources {int if_cap_flags; void* max_mcc_count; void* max_iface_count; void* max_cq_count; void* max_evt_qs; void* max_rx_qs; void* max_rss_qs; void* max_tx_qs; void* max_mcast_mac; void* max_vlans; void* max_uc_mac; } ;
struct be_nic_res_desc {int cap_flags; int mcc_count; int iface_count; int cq_count; int eq_count; int rq_count; int rssq_count; int txq_count; int mcast_mac_count; int vlan_count; int unicast_mac_count; } ;


 int BE_IF_CAP_FLAGS_WANT ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void be_copy_nic_desc(struct be_resources *res,
        struct be_nic_res_desc *desc)
{
 res->max_uc_mac = le16_to_cpu(desc->unicast_mac_count);
 res->max_vlans = le16_to_cpu(desc->vlan_count);
 res->max_mcast_mac = le16_to_cpu(desc->mcast_mac_count);
 res->max_tx_qs = le16_to_cpu(desc->txq_count);
 res->max_rss_qs = le16_to_cpu(desc->rssq_count);
 res->max_rx_qs = le16_to_cpu(desc->rq_count);
 res->max_evt_qs = le16_to_cpu(desc->eq_count);
 res->max_cq_count = le16_to_cpu(desc->cq_count);
 res->max_iface_count = le16_to_cpu(desc->iface_count);
 res->max_mcc_count = le16_to_cpu(desc->mcc_count);

 res->if_cap_flags = le32_to_cpu(desc->cap_flags) &
    BE_IF_CAP_FLAGS_WANT;
}
