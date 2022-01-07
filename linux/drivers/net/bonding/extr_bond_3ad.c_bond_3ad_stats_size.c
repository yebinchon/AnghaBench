
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 size_t nla_total_size_64bit (int) ;

size_t bond_3ad_stats_size(void)
{
 return nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64)) +
        nla_total_size_64bit(sizeof(u64));
}
