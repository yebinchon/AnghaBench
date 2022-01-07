
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_phy; } ;
struct ath_softc {TYPE_1__ debug; } ;


 int debugfs_create_file (char*,int,int ,struct ath_softc*,int *) ;
 int fops_dfs_stats ;
 int fops_simulate_radar ;

void ath9k_dfs_init_debug(struct ath_softc *sc)
{
 debugfs_create_file("dfs_stats", 0400,
       sc->debug.debugfs_phy, sc, &fops_dfs_stats);
 debugfs_create_file("dfs_simulate_radar", 0200,
       sc->debug.debugfs_phy, sc, &fops_simulate_radar);
}
