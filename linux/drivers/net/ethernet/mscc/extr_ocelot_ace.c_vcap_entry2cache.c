
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vcap_data {int tg; int * mask; int * entry; } ;
struct ocelot {int dummy; } ;
struct TYPE_2__ {size_t entry_words; } ;


 int S2_CACHE_ENTRY_DAT ;
 int S2_CACHE_MASK_DAT ;
 int S2_CACHE_TG_DAT ;
 int ocelot_write (struct ocelot*,int ,int ) ;
 int ocelot_write_rix (struct ocelot*,int ,int ,size_t) ;
 TYPE_1__ vcap_is2 ;

__attribute__((used)) static void vcap_entry2cache(struct ocelot *oc, struct vcap_data *data)
{
 u32 i;

 for (i = 0; i < vcap_is2.entry_words; i++) {
  ocelot_write_rix(oc, data->entry[i], S2_CACHE_ENTRY_DAT, i);
  ocelot_write_rix(oc, ~data->mask[i], S2_CACHE_MASK_DAT, i);
 }
 ocelot_write(oc, data->tg, S2_CACHE_TG_DAT);
}
