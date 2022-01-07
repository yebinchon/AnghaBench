
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct timespec64 {int dummy; } ;
struct sja1105_private {int refresh_work; int ptp_caps; } ;
struct delayed_work {int dummy; } ;


 int SJA1105_REFRESH_INTERVAL ;
 struct sja1105_private* dw_to_sja1105 (struct delayed_work*) ;
 int schedule_delayed_work (int *,int ) ;
 int sja1105_ptp_gettime (int *,struct timespec64*) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;

__attribute__((used)) static void sja1105_ptp_overflow_check(struct work_struct *work)
{
 struct delayed_work *dw = to_delayed_work(work);
 struct sja1105_private *priv = dw_to_sja1105(dw);
 struct timespec64 ts;

 sja1105_ptp_gettime(&priv->ptp_caps, &ts);

 schedule_delayed_work(&priv->refresh_work, SJA1105_REFRESH_INTERVAL);
}
