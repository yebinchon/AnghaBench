
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 int WARN_ON (int) ;

int iwl_pcie_dummy_napi_poll(struct napi_struct *napi, int budget)
{
 WARN_ON(1);
 return 0;
}
