
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot {int shared_queue_sz; int* base_mac; int num_stats; int stats_layout; int map; } ;


 int ARRAY_SIZE (int ) ;
 int eth_random_addr (int*) ;
 int ocelot_pll5_init (struct ocelot*) ;
 int ocelot_regfields ;
 int ocelot_regfields_init (struct ocelot*,int ) ;
 int ocelot_regmap ;
 int ocelot_stats_layout ;

int ocelot_chip_init(struct ocelot *ocelot)
{
 int ret;

 ocelot->map = ocelot_regmap;
 ocelot->stats_layout = ocelot_stats_layout;
 ocelot->num_stats = ARRAY_SIZE(ocelot_stats_layout);
 ocelot->shared_queue_sz = 224 * 1024;

 ret = ocelot_regfields_init(ocelot, ocelot_regfields);
 if (ret)
  return ret;

 ocelot_pll5_init(ocelot);

 eth_random_addr(ocelot->base_mac);
 ocelot->base_mac[5] &= 0xf0;

 return 0;
}
