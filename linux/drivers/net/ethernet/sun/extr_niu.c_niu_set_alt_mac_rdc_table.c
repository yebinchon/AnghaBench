
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int EINVAL ;
 int __set_rdc_table_num (struct niu*,int,int,int,int) ;
 int niu_num_alt_addr (struct niu*) ;

__attribute__((used)) static int niu_set_alt_mac_rdc_table(struct niu *np, int idx,
         int table_num, int mac_pref)
{
 if (idx >= niu_num_alt_addr(np))
  return -EINVAL;
 return __set_rdc_table_num(np, idx, idx + 1, table_num, mac_pref);
}
