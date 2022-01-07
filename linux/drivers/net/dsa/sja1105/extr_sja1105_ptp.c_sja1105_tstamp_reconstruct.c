
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sja1105_private {TYPE_1__* info; } ;
struct TYPE_2__ {int ptp_ts_bits; } ;


 int CYCLECOUNTER_MASK (int ) ;

u64 sja1105_tstamp_reconstruct(struct sja1105_private *priv, u64 now,
          u64 ts_partial)
{
 u64 partial_tstamp_mask = CYCLECOUNTER_MASK(priv->info->ptp_ts_bits);
 u64 ts_reconstructed;

 ts_reconstructed = (now & ~partial_tstamp_mask) | ts_partial;





 if ((now & partial_tstamp_mask) <= ts_partial)
  ts_reconstructed -= (partial_tstamp_mask + 1);

 return ts_reconstructed;
}
