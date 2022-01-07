
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocelot {int num_phys_ports; int num_stats; int* stats; int stats_lock; TYPE_1__* stats_layout; } ;
struct TYPE_2__ {int offset; } ;


 int SYS_COUNT_RX_OCTETS ;
 int SYS_STAT_CFG ;
 int SYS_STAT_CFG_STAT_VIEW (int) ;
 int U32_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocelot_read_rix (struct ocelot*,int ,int ) ;
 int ocelot_write (struct ocelot*,int ,int ) ;

__attribute__((used)) static void ocelot_update_stats(struct ocelot *ocelot)
{
 int i, j;

 mutex_lock(&ocelot->stats_lock);

 for (i = 0; i < ocelot->num_phys_ports; i++) {

  ocelot_write(ocelot, SYS_STAT_CFG_STAT_VIEW(i), SYS_STAT_CFG);

  for (j = 0; j < ocelot->num_stats; j++) {
   u32 val;
   unsigned int idx = i * ocelot->num_stats + j;

   val = ocelot_read_rix(ocelot, SYS_COUNT_RX_OCTETS,
           ocelot->stats_layout[j].offset);

   if (val < (ocelot->stats[idx] & U32_MAX))
    ocelot->stats[idx] += (u64)1 << 32;

   ocelot->stats[idx] = (ocelot->stats[idx] &
           ~(u64)U32_MAX) + val;
  }
 }

 mutex_unlock(&ocelot->stats_lock);
}
