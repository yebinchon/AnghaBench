
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_mib_stats {int beacons; int fcs_bad; int ackrcv_bad; int rts_bad; int rts_good; } ;


 scalar_t__ AR_ACK_FAIL ;
 scalar_t__ AR_BEACON_CNT ;
 scalar_t__ AR_FCS_FAIL ;
 scalar_t__ AR_RTS_FAIL ;
 scalar_t__ AR_RTS_OK ;
 int REG_READ_MULTI (struct ath_hw*,scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void ath9k_hw_update_mibstats(struct ath_hw *ah,
         struct ath9k_mib_stats *stats)
{
 u32 addr[5] = {AR_RTS_OK, AR_RTS_FAIL, AR_ACK_FAIL,
         AR_FCS_FAIL, AR_BEACON_CNT};
 u32 data[5];

 REG_READ_MULTI(ah, &addr[0], &data[0], 5);

 stats->rts_good += data[0];

 stats->rts_bad += data[1];

 stats->ackrcv_bad += data[2];

 stats->fcs_bad += data[3];

 stats->beacons += data[4];
}
