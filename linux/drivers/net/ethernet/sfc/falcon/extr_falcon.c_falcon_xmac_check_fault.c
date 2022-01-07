
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int falcon_xmac_link_ok_retry (struct ef4_nic*,int) ;

__attribute__((used)) static bool falcon_xmac_check_fault(struct ef4_nic *efx)
{
 return !falcon_xmac_link_ok_retry(efx, 5);
}
