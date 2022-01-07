
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int __set_rdc_table_num (struct niu*,int,int ,int,int) ;

__attribute__((used)) static int niu_set_primary_mac_rdc_table(struct niu *np, int table_num,
      int mac_pref)
{
 return __set_rdc_table_num(np, 17, 0, table_num, mac_pref);
}
