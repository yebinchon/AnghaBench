
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ H_AUTHORITY ;
 int pr_err (char*,char*) ;
 int pr_info (char*,char*) ;

__attribute__((used)) static void ehea_promiscuous_error(u64 hret, int enable)
{
 if (hret == H_AUTHORITY)
  pr_info("Hypervisor denied %sabling promiscuous mode\n",
   enable == 1 ? "en" : "dis");
 else
  pr_err("failed %sabling promiscuous mode\n",
         enable == 1 ? "en" : "dis");
}
