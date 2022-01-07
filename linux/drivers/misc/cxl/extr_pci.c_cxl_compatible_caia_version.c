
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int caia_major; } ;


 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;

__attribute__((used)) static bool cxl_compatible_caia_version(struct cxl *adapter)
{
 if (cxl_is_power8() && (adapter->caia_major == 1))
  return 1;

 if (cxl_is_power9() && (adapter->caia_major == 2))
  return 1;

 return 0;
}
