
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct ksz_port_mib {int cnt_mutex; int counters; int cnt_ptr; } ;
struct ksz_device {int mib_cnt; int reg_mib_cnt; TYPE_1__* ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_port {int slave; } ;
struct TYPE_2__ {struct ksz_port_mib mib; } ;


 struct dsa_port* dsa_to_port (struct dsa_switch*,int) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_ok (int ) ;
 int port_r_cnt (struct ksz_device*,int) ;

void ksz_get_ethtool_stats(struct dsa_switch *ds, int port, uint64_t *buf)
{
 const struct dsa_port *dp = dsa_to_port(ds, port);
 struct ksz_device *dev = ds->priv;
 struct ksz_port_mib *mib;

 mib = &dev->ports[port].mib;
 mutex_lock(&mib->cnt_mutex);


 if (!netif_carrier_ok(dp->slave))
  mib->cnt_ptr = dev->reg_mib_cnt;
 port_r_cnt(dev, port);
 memcpy(buf, mib->counters, dev->mib_cnt * sizeof(u64));
 mutex_unlock(&mib->cnt_mutex);
}
