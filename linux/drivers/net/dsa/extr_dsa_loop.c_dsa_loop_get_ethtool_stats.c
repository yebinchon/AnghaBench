
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct dsa_switch {struct dsa_loop_priv* priv; } ;
struct dsa_loop_priv {TYPE_2__* ports; } ;
struct TYPE_4__ {TYPE_1__* mib; } ;
struct TYPE_3__ {int val; } ;


 unsigned int __DSA_LOOP_CNT_MAX ;

__attribute__((used)) static void dsa_loop_get_ethtool_stats(struct dsa_switch *ds, int port,
           uint64_t *data)
{
 struct dsa_loop_priv *ps = ds->priv;
 unsigned int i;

 for (i = 0; i < __DSA_LOOP_CNT_MAX; i++)
  data[i] = ps->ports[port].mib[i].val;
}
