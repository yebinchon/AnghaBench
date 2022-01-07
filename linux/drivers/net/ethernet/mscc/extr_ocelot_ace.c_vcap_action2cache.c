
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vcap_data {size_t* action; size_t type; size_t* counter; } ;
struct ocelot {int dummy; } ;
struct TYPE_2__ {size_t action_type_width; size_t action_words; size_t counter_words; } ;


 size_t GENMASK (size_t,int ) ;
 int S2_CACHE_ACTION_DAT ;
 int S2_CACHE_CNT_DAT ;
 int ocelot_write_rix (struct ocelot*,size_t,int ,size_t) ;
 TYPE_1__ vcap_is2 ;

__attribute__((used)) static void vcap_action2cache(struct ocelot *oc, struct vcap_data *data)
{
 u32 i, width, mask;


 width = vcap_is2.action_type_width;
 if (width) {
  mask = GENMASK(width, 0);
  data->action[0] = ((data->action[0] & ~mask) | data->type);
 }

 for (i = 0; i < vcap_is2.action_words; i++)
  ocelot_write_rix(oc, data->action[i], S2_CACHE_ACTION_DAT, i);

 for (i = 0; i < vcap_is2.counter_words; i++)
  ocelot_write_rix(oc, data->counter[i], S2_CACHE_CNT_DAT, i);
}
