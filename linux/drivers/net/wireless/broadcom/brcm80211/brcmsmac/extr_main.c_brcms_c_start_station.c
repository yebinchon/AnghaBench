
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_info {TYPE_2__* bsscfg; TYPE_1__* pub; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int cur_etheraddr; } ;


 int BRCMS_TYPE_STATION ;
 int memcpy (int ,int *,int) ;

void brcms_c_start_station(struct brcms_c_info *wlc, u8 *addr)
{
 memcpy(wlc->pub->cur_etheraddr, addr, sizeof(wlc->pub->cur_etheraddr));
 wlc->bsscfg->type = BRCMS_TYPE_STATION;
}
