
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_tc_flower_entry {int dummy; } ;
struct adapter {int flower_ht_params; int flower_tbl; } ;


 struct ch_tc_flower_entry* rhashtable_lookup_fast (int *,unsigned long*,int ) ;

__attribute__((used)) static struct ch_tc_flower_entry *ch_flower_lookup(struct adapter *adap,
         unsigned long flower_cookie)
{
 return rhashtable_lookup_fast(&adap->flower_tbl, &flower_cookie,
          adap->flower_ht_params);
}
