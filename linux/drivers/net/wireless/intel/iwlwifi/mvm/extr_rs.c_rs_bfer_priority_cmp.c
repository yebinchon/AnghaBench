
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int dummy; } ;


 int rs_bfer_priority (struct iwl_mvm_sta*) ;

__attribute__((used)) static int rs_bfer_priority_cmp(struct iwl_mvm_sta *sta1,
    struct iwl_mvm_sta *sta2)
{
 int prio1 = rs_bfer_priority(sta1);
 int prio2 = rs_bfer_priority(sta2);

 if (prio1 > prio2)
  return 1;
 if (prio1 < prio2)
  return -1;
 return 0;
}
