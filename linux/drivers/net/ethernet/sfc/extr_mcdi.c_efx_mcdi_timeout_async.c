
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct efx_mcdi_iface {int dummy; } ;


 int async_timer ;
 int efx_mcdi_complete_async (struct efx_mcdi_iface*,int) ;
 struct efx_mcdi_iface* from_timer (int ,struct timer_list*,int ) ;
 struct efx_mcdi_iface* mcdi ;

__attribute__((used)) static void efx_mcdi_timeout_async(struct timer_list *t)
{
 struct efx_mcdi_iface *mcdi = from_timer(mcdi, t, async_timer);

 efx_mcdi_complete_async(mcdi, 1);
}
