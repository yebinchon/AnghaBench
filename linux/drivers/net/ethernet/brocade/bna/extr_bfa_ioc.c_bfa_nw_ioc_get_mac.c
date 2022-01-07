
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {int mac; } ;


 int ether_addr_copy (int *,int ) ;

void
bfa_nw_ioc_get_mac(struct bfa_ioc *ioc, u8 *mac)
{
 ether_addr_copy(mac, ioc->attr->mac);
}
