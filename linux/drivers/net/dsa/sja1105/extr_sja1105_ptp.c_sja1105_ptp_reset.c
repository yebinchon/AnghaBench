
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_ptp_cmd {int resptp; int member_0; } ;
struct sja1105_private {int ptp_lock; int tstamp_cc; int tstamp_tc; TYPE_1__* info; struct dsa_switch* ds; } ;
struct dsa_switch {int dev; } ;
struct TYPE_2__ {int (* ptp_cmd ) (struct sja1105_private*,struct sja1105_ptp_cmd*) ;} ;


 int dev_dbg (int ,char*) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct sja1105_private*,struct sja1105_ptp_cmd*) ;
 int timecounter_init (int *,int *,int ) ;

int sja1105_ptp_reset(struct sja1105_private *priv)
{
 struct dsa_switch *ds = priv->ds;
 struct sja1105_ptp_cmd cmd = {0};
 int rc;

 mutex_lock(&priv->ptp_lock);

 cmd.resptp = 1;
 dev_dbg(ds->dev, "Resetting PTP clock\n");
 rc = priv->info->ptp_cmd(priv, &cmd);

 timecounter_init(&priv->tstamp_tc, &priv->tstamp_cc,
    ktime_to_ns(ktime_get_real()));

 mutex_unlock(&priv->ptp_lock);

 return rc;
}
