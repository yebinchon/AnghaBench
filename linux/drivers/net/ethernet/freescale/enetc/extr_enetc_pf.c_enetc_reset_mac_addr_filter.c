
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_mac_filter {int mac_hash_table; scalar_t__ mac_addr_cnt; } ;


 int ENETC_MADDR_HASH_TBL_SZ ;
 int bitmap_zero (int ,int ) ;

__attribute__((used)) static void enetc_reset_mac_addr_filter(struct enetc_mac_filter *filter)
{
 filter->mac_addr_cnt = 0;

 bitmap_zero(filter->mac_hash_table,
      ENETC_MADDR_HASH_TBL_SZ);
}
