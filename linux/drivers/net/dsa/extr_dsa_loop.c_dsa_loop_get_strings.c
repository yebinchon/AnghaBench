
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u32 ;
struct dsa_switch {struct dsa_loop_priv* priv; } ;
struct dsa_loop_priv {TYPE_2__* ports; } ;
struct TYPE_4__ {TYPE_1__* mib; } ;
struct TYPE_3__ {int name; } ;


 unsigned int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_PHY_STATS ;
 scalar_t__ ETH_SS_STATS ;
 unsigned int __DSA_LOOP_CNT_MAX ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static void dsa_loop_get_strings(struct dsa_switch *ds, int port,
     u32 stringset, uint8_t *data)
{
 struct dsa_loop_priv *ps = ds->priv;
 unsigned int i;

 if (stringset != ETH_SS_STATS && stringset != ETH_SS_PHY_STATS)
  return;

 for (i = 0; i < __DSA_LOOP_CNT_MAX; i++)
  memcpy(data + i * ETH_GSTRING_LEN,
         ps->ports[port].mib[i].name, ETH_GSTRING_LEN);
}
