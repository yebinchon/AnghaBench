
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct cal_ctl_data_5g {int * ctlEdges; } ;
struct cal_ctl_data_2g {int * ctlEdges; } ;
struct ar9300_eeprom {int ** ctl_freqbin_5G; int ** ctl_freqbin_2G; struct cal_ctl_data_5g* ctlPowerData_5G; struct cal_ctl_data_2g* ctlPowerData_2G; } ;


 scalar_t__ CTL_EDGE_FLAGS (int ) ;
 scalar_t__ CTL_EDGE_TPOWER (int ) ;
 scalar_t__ MAX_RATE_POWER ;
 scalar_t__ ath9k_hw_fbin2freq (int ,int) ;

__attribute__((used)) static u16 ar9003_hw_get_indirect_edge_power(struct ar9300_eeprom *eep,
          int idx,
          unsigned int edge,
          u16 freq,
          bool is2GHz)
{
 struct cal_ctl_data_2g *ctl_2g = eep->ctlPowerData_2G;
 struct cal_ctl_data_5g *ctl_5g = eep->ctlPowerData_5G;

 u8 *ctl_freqbin = is2GHz ?
  &eep->ctl_freqbin_2G[idx][0] :
  &eep->ctl_freqbin_5G[idx][0];

 if (is2GHz) {
  if (ath9k_hw_fbin2freq(ctl_freqbin[edge - 1], 1) < freq &&
      CTL_EDGE_FLAGS(ctl_2g[idx].ctlEdges[edge - 1]))
   return CTL_EDGE_TPOWER(ctl_2g[idx].ctlEdges[edge - 1]);
 } else {
  if (ath9k_hw_fbin2freq(ctl_freqbin[edge - 1], 0) < freq &&
      CTL_EDGE_FLAGS(ctl_5g[idx].ctlEdges[edge - 1]))
   return CTL_EDGE_TPOWER(ctl_5g[idx].ctlEdges[edge - 1]);
 }

 return MAX_RATE_POWER;
}
