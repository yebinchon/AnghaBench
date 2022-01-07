
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int dummy; } ;
struct sja1105_private {int ptp_lock; int tstamp_cc; int tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sja1105_private* ptp_to_sja1105 (struct ptp_clock_info*) ;
 int timecounter_init (int *,int *,int ) ;
 int timespec64_to_ns (struct timespec64 const*) ;

__attribute__((used)) static int sja1105_ptp_settime(struct ptp_clock_info *ptp,
          const struct timespec64 *ts)
{
 struct sja1105_private *priv = ptp_to_sja1105(ptp);
 u64 ns = timespec64_to_ns(ts);

 mutex_lock(&priv->ptp_lock);
 timecounter_init(&priv->tstamp_tc, &priv->tstamp_cc, ns);
 mutex_unlock(&priv->ptp_lock);

 return 0;
}
