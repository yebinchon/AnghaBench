
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int ptp_lock; int tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;
typedef int s64 ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sja1105_private* ptp_to_sja1105 (struct ptp_clock_info*) ;
 int timecounter_adjtime (int *,int ) ;

__attribute__((used)) static int sja1105_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
{
 struct sja1105_private *priv = ptp_to_sja1105(ptp);

 mutex_lock(&priv->ptp_lock);
 timecounter_adjtime(&priv->tstamp_tc, delta);
 mutex_unlock(&priv->ptp_lock);

 return 0;
}
