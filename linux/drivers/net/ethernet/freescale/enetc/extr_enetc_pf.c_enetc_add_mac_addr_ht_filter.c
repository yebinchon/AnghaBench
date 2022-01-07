
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_mac_filter {int mac_addr_cnt; int mac_hash_table; } ;


 int __set_bit (int,int ) ;
 int enetc_mac_addr_hash_idx (unsigned char const*) ;

__attribute__((used)) static void enetc_add_mac_addr_ht_filter(struct enetc_mac_filter *filter,
      const unsigned char *addr)
{
 int idx = enetc_mac_addr_hash_idx(addr);


 __set_bit(idx, filter->mac_hash_table);
 filter->mac_addr_cnt++;
}
