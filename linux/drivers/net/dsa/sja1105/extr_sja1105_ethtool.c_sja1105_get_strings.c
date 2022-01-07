
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sja1105_private {TYPE_1__* info; } ;
struct dsa_switch {struct sja1105_private* priv; } ;
struct TYPE_2__ {int device_id; } ;


 int ARRAY_SIZE (int *) ;
 int ETH_GSTRING_LEN ;

 int SJA1105E_DEVICE_ID ;
 int SJA1105T_DEVICE_ID ;
 int * sja1105_port_stats ;
 int * sja1105pqrs_extra_port_stats ;
 int strlcpy (int *,int ,int ) ;

void sja1105_get_strings(struct dsa_switch *ds, int port,
    u32 stringset, u8 *data)
{
 struct sja1105_private *priv = ds->priv;
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(sja1105_port_stats); i++) {
   strlcpy(p, sja1105_port_stats[i], ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  if (priv->info->device_id == SJA1105E_DEVICE_ID ||
      priv->info->device_id == SJA1105T_DEVICE_ID)
   return;
  for (i = 0; i < ARRAY_SIZE(sja1105pqrs_extra_port_stats); i++) {
   strlcpy(p, sja1105pqrs_extra_port_stats[i],
    ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
