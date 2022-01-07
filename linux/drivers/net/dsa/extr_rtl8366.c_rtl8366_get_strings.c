
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
struct rtl8366_mib_counter {int name; } ;
struct realtek_smi {int num_ports; int num_mib_counters; struct rtl8366_mib_counter* mib_counters; } ;
struct dsa_switch {struct realtek_smi* priv; } ;


 int ETH_GSTRING_LEN ;
 int strncpy (int *,int ,int) ;

void rtl8366_get_strings(struct dsa_switch *ds, int port, u32 stringset,
    uint8_t *data)
{
 struct realtek_smi *smi = ds->priv;
 struct rtl8366_mib_counter *mib;
 int i;

 if (port >= smi->num_ports)
  return;

 for (i = 0; i < smi->num_mib_counters; i++) {
  mib = &smi->mib_counters[i];
  strncpy(data + i * ETH_GSTRING_LEN,
   mib->name, ETH_GSTRING_LEN);
 }
}
