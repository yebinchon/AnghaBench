
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int mac_5; int mac_4; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct TYPE_8__ {int mac_3; int mac_2; int mac_1; int mac_0; } ;
struct TYPE_7__ {TYPE_4__ bits; } ;
struct dsaf_drv_tbl_tcam_key {TYPE_2__ low; TYPE_3__ high; } ;



__attribute__((used)) static void
hns_dsaf_tcam_addr_get(struct dsaf_drv_tbl_tcam_key *mac_key, u8 *addr)
{
 addr[0] = mac_key->high.bits.mac_0;
 addr[1] = mac_key->high.bits.mac_1;
 addr[2] = mac_key->high.bits.mac_2;
 addr[3] = mac_key->high.bits.mac_3;
 addr[4] = mac_key->low.bits.mac_4;
 addr[5] = mac_key->low.bits.mac_5;
}
