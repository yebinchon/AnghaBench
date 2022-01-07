
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int configured_state; } ;


 int atomic_inc_unless_negative (int *) ;

__attribute__((used)) static bool cxl_afu_configured_get(struct cxl_afu *afu)
{
 return atomic_inc_unless_negative(&afu->configured_state);
}
