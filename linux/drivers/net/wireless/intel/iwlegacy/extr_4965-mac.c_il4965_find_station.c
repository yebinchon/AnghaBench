
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int bcast_id; int max_stations; } ;
struct il_priv {scalar_t__ iw_mode; int sta_lock; TYPE_4__* stations; int num_stations; TYPE_1__ hw_params; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_7__ {TYPE_2__ sta; } ;
struct TYPE_8__ {int used; TYPE_3__ sta; } ;


 int D_ASSOC (char*,int const*,int ) ;
 int IL_ERR (char*,int) ;
 int IL_INVALID_STATION ;
 int IL_STA_ID ;
 int IL_STA_UCODE_ACTIVE ;
 int IL_STA_UCODE_INPROGRESS ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 scalar_t__ is_broadcast_ether_addr (int const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8
il4965_find_station(struct il_priv *il, const u8 *addr)
{
 int i;
 int start = 0;
 int ret = IL_INVALID_STATION;
 unsigned long flags;

 if (il->iw_mode == NL80211_IFTYPE_ADHOC)
  start = IL_STA_ID;

 if (is_broadcast_ether_addr(addr))
  return il->hw_params.bcast_id;

 spin_lock_irqsave(&il->sta_lock, flags);
 for (i = start; i < il->hw_params.max_stations; i++)
  if (il->stations[i].used &&
      ether_addr_equal(il->stations[i].sta.sta.addr, addr)) {
   ret = i;
   goto out;
  }

 D_ASSOC("can not find STA %pM total %d\n", addr, il->num_stations);

out:





 if (ret != IL_INVALID_STATION &&
     (!(il->stations[ret].used & IL_STA_UCODE_ACTIVE) ||
      ((il->stations[ret].used & IL_STA_UCODE_ACTIVE) &&
       (il->stations[ret].used & IL_STA_UCODE_INPROGRESS)))) {
  IL_ERR("Requested station info for sta %d before ready.\n",
         ret);
  ret = IL_INVALID_STATION;
 }
 spin_unlock_irqrestore(&il->sta_lock, flags);
 return ret;
}
