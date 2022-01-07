
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_nic_data {int wol_filter_id; } ;
struct ethtool_wolinfo {int sopass; void* wolopts; void* supported; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;


 void* WAKE_MAGIC ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void siena_get_wol(struct efx_nic *efx, struct ethtool_wolinfo *wol)
{
 struct siena_nic_data *nic_data = efx->nic_data;

 wol->supported = WAKE_MAGIC;
 if (nic_data->wol_filter_id != -1)
  wol->wolopts = WAKE_MAGIC;
 else
  wol->wolopts = 0;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
