
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pulse_event {int dummy; } ;
struct dfs_pattern_detector {int (* add_pulse ) (struct dfs_pattern_detector*,struct pulse_event*,int *) ;} ;
struct ath_softc {int hw; struct dfs_pattern_detector* dfs_detector; } ;


 int DFS_STAT_INC (struct ath_softc*,int ) ;
 int ieee80211_radar_detected (int ) ;
 int pulses_processed ;
 int radar_detected ;
 int stub1 (struct dfs_pattern_detector*,struct pulse_event*,int *) ;

__attribute__((used)) static void
ath9k_dfs_process_radar_pulse(struct ath_softc *sc, struct pulse_event *pe)
{
 struct dfs_pattern_detector *pd = sc->dfs_detector;
 DFS_STAT_INC(sc, pulses_processed);
 if (pd == ((void*)0))
  return;
 if (!pd->add_pulse(pd, pe, ((void*)0)))
  return;
 DFS_STAT_INC(sc, radar_detected);
 ieee80211_radar_detected(sc->hw);
}
