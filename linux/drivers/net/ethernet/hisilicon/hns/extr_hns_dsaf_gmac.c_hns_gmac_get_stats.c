
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct mac_hw_stats {int dummy; } ;
struct mac_driver {TYPE_1__* mac_cb; } ;
struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {struct mac_hw_stats hw_stats; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int DSAF_STATS_READ (struct mac_hw_stats*,int ) ;
 TYPE_2__* g_gmac_stats_string ;

__attribute__((used)) static void hns_gmac_get_stats(void *mac_drv, u64 *data)
{
 u32 i;
 u64 *buf = data;
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 struct mac_hw_stats *hw_stats = ((void*)0);

 hw_stats = &drv->mac_cb->hw_stats;

 for (i = 0; i < ARRAY_SIZE(g_gmac_stats_string); i++) {
  buf[i] = DSAF_STATS_READ(hw_stats,
   g_gmac_stats_string[i].offset);
 }
}
