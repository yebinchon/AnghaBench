
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ant_comb {int ant_ratio2; int low_rssi_thresh; } ;



__attribute__((used)) static inline bool ath_is_alt_ant_ratio_better(struct ath_ant_comb *antcomb,
            int alt_ratio, int maxdelta,
            int mindelta, int main_rssi_avg,
            int alt_rssi_avg, int pkt_count)
{
 if (pkt_count <= 50)
  return 0;

 if (alt_rssi_avg > main_rssi_avg + mindelta)
  return 1;

 if (alt_ratio >= antcomb->ant_ratio2 &&
     alt_rssi_avg >= antcomb->low_rssi_thresh &&
     (alt_rssi_avg > main_rssi_avg + maxdelta))
  return 1;

 return 0;
}
