
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int dummy; } ;
struct sja1105_private {int ptp_lock; int tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct timespec64 ns_to_timespec64 (int ) ;
 struct sja1105_private* ptp_to_sja1105 (struct ptp_clock_info*) ;
 int timecounter_read (int *) ;

__attribute__((used)) static int sja1105_ptp_gettime(struct ptp_clock_info *ptp,
          struct timespec64 *ts)
{
 struct sja1105_private *priv = ptp_to_sja1105(ptp);
 u64 ns;

 mutex_lock(&priv->ptp_lock);
 ns = timecounter_read(&priv->tstamp_tc);
 mutex_unlock(&priv->ptp_lock);

 *ts = ns_to_timespec64(ns);

 return 0;
}
