
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xgene_enet_pdata {int extd_stats; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XGENE_EXTD_STATS_LEN ;
 int devm_kmalloc_array (int *,int,int,int ) ;
 int memset (int ,int ,int) ;
 int xgene_get_extd_stats (struct xgene_enet_pdata*) ;

int xgene_extd_stats_init(struct xgene_enet_pdata *pdata)
{
 pdata->extd_stats = devm_kmalloc_array(&pdata->pdev->dev,
   XGENE_EXTD_STATS_LEN, sizeof(u64), GFP_KERNEL);
 if (!pdata->extd_stats)
  return -ENOMEM;

 xgene_get_extd_stats(pdata);
 memset(pdata->extd_stats, 0, XGENE_EXTD_STATS_LEN * sizeof(u64));

 return 0;
}
