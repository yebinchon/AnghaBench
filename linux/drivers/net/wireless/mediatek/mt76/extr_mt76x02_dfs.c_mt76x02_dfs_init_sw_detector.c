
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pri_margin; int min_pri; int max_pri; } ;
struct mt76x02_dfs_pattern_detector {TYPE_2__ sw_dpd_params; } ;
struct TYPE_3__ {int region; } ;
struct mt76x02_dev {TYPE_1__ mt76; struct mt76x02_dfs_pattern_detector dfs_pd; } ;


 int MT_DFS_ETSI_MAX_PRI ;
 int MT_DFS_ETSI_MIN_PRI ;
 int MT_DFS_FCC_MAX_PRI ;
 int MT_DFS_FCC_MIN_PRI ;
 int MT_DFS_JP_MAX_PRI ;
 int MT_DFS_JP_MIN_PRI ;
 int MT_DFS_PRI_MARGIN ;





__attribute__((used)) static void mt76x02_dfs_init_sw_detector(struct mt76x02_dev *dev)
{
 struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

 switch (dev->mt76.region) {
 case 130:
  dfs_pd->sw_dpd_params.max_pri = MT_DFS_FCC_MAX_PRI;
  dfs_pd->sw_dpd_params.min_pri = MT_DFS_FCC_MIN_PRI;
  dfs_pd->sw_dpd_params.pri_margin = MT_DFS_PRI_MARGIN;
  break;
 case 131:
  dfs_pd->sw_dpd_params.max_pri = MT_DFS_ETSI_MAX_PRI;
  dfs_pd->sw_dpd_params.min_pri = MT_DFS_ETSI_MIN_PRI;
  dfs_pd->sw_dpd_params.pri_margin = MT_DFS_PRI_MARGIN << 2;
  break;
 case 129:
  dfs_pd->sw_dpd_params.max_pri = MT_DFS_JP_MAX_PRI;
  dfs_pd->sw_dpd_params.min_pri = MT_DFS_JP_MIN_PRI;
  dfs_pd->sw_dpd_params.pri_margin = MT_DFS_PRI_MARGIN;
  break;
 case 128:
 default:
  break;
 }
}
