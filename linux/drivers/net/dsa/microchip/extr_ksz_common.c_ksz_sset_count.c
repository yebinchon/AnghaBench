
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int mib_cnt; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int ETH_SS_STATS ;

int ksz_sset_count(struct dsa_switch *ds, int port, int sset)
{
 struct ksz_device *dev = ds->priv;

 if (sset != ETH_SS_STATS)
  return 0;

 return dev->mib_cnt;
}
