
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_wolinfo {int sopass; scalar_t__ wolopts; scalar_t__ supported; } ;
struct ef4_nic {int dummy; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void falcon_get_wol(struct ef4_nic *efx, struct ethtool_wolinfo *wol)
{
 wol->supported = 0;
 wol->wolopts = 0;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
