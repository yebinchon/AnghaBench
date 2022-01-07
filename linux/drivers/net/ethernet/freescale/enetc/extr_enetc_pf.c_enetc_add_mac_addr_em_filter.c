
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_mac_filter {int mac_addr_cnt; int mac_addr; } ;


 int ether_addr_copy (int ,unsigned char const*) ;

__attribute__((used)) static void enetc_add_mac_addr_em_filter(struct enetc_mac_filter *filter,
      const unsigned char *addr)
{

 ether_addr_copy(filter->mac_addr, addr);
 filter->mac_addr_cnt++;
}
