
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_lpss {scalar_t__ priv; TYPE_2__* info; } ;
typedef int resource_size_t ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int start; } ;


 scalar_t__ LPSS_PRIV_REMAP_ADDR ;
 int lo_hi_writeq (int ,scalar_t__) ;

__attribute__((used)) static void intel_lpss_set_remap_addr(const struct intel_lpss *lpss)
{
 resource_size_t addr = lpss->info->mem->start;

 lo_hi_writeq(addr, lpss->priv + LPSS_PRIV_REMAP_ADDR);
}
