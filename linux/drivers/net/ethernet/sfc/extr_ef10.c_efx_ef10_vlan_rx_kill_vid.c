
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efx_nic {int dummy; } ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int ETH_P_8021Q ;
 int efx_ef10_del_vlan (struct efx_nic*,int ) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static int efx_ef10_vlan_rx_kill_vid(struct efx_nic *efx, __be16 proto, u16 vid)
{
 if (proto != htons(ETH_P_8021Q))
  return -EINVAL;

 return efx_ef10_del_vlan(efx, vid);
}
