
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mult; } ;
struct sja1105_private {int ptp_lock; TYPE_1__ tstamp_cc; int tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;
typedef int s64 ;


 scalar_t__ SJA1105_CC_MULT ;
 int SJA1105_CC_MULT_DEM ;
 int SJA1105_CC_MULT_NUM ;
 int div_s64 (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sja1105_private* ptp_to_sja1105 (struct ptp_clock_info*) ;
 int timecounter_read (int *) ;

__attribute__((used)) static int sja1105_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
{
 struct sja1105_private *priv = ptp_to_sja1105(ptp);
 s64 clkrate;

 clkrate = (s64)scaled_ppm * SJA1105_CC_MULT_NUM;
 clkrate = div_s64(clkrate, SJA1105_CC_MULT_DEM);

 mutex_lock(&priv->ptp_lock);
 timecounter_read(&priv->tstamp_tc);

 priv->tstamp_cc.mult = SJA1105_CC_MULT + clkrate;

 mutex_unlock(&priv->ptp_lock);

 return 0;
}
