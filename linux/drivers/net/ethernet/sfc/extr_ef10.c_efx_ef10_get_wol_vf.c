
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_wolinfo {int dummy; } ;
struct efx_nic {int dummy; } ;



__attribute__((used)) static void efx_ef10_get_wol_vf(struct efx_nic *efx,
    struct ethtool_wolinfo *wol) {}
