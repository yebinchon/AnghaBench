
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int num_ports; int num_mib_counters; } ;
struct dsa_switch {struct realtek_smi* priv; } ;


 int EINVAL ;
 int ETH_SS_STATS ;

int rtl8366_get_sset_count(struct dsa_switch *ds, int port, int sset)
{
 struct realtek_smi *smi = ds->priv;


 if (sset != ETH_SS_STATS)
  return 0;
 if (port >= smi->num_ports)
  return -EINVAL;

 return smi->num_mib_counters;
}
