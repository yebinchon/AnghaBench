
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct rtl8366_mib_counter {int name; } ;
struct realtek_smi {int num_ports; int num_mib_counters; int dev; TYPE_1__* ops; struct rtl8366_mib_counter* mib_counters; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* get_mib_counter ) (struct realtek_smi*,int,struct rtl8366_mib_counter*,int *) ;} ;


 int dev_err (int ,char*,int ) ;
 int stub1 (struct realtek_smi*,int,struct rtl8366_mib_counter*,int *) ;

void rtl8366_get_ethtool_stats(struct dsa_switch *ds, int port, uint64_t *data)
{
 struct realtek_smi *smi = ds->priv;
 int i;
 int ret;

 if (port >= smi->num_ports)
  return;

 for (i = 0; i < smi->num_mib_counters; i++) {
  struct rtl8366_mib_counter *mib;
  u64 mibvalue = 0;

  mib = &smi->mib_counters[i];
  ret = smi->ops->get_mib_counter(smi, port, mib, &mibvalue);
  if (ret) {
   dev_err(smi->dev, "error reading MIB counter %s\n",
    mib->name);
  }
  data[i] = mibvalue;
 }
}
