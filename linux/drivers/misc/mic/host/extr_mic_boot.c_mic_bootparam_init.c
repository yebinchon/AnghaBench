
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {scalar_t__ id; struct mic_bootparam* dp; } ;
struct mic_bootparam {int h2c_config_db; int scif_host_dma_addr; int scif_card_dma_addr; int c2h_scif_db; int h2c_scif_db; scalar_t__ node_id; int magic; } ;


 int MIC_MAGIC ;
 int cpu_to_le32 (int ) ;

void mic_bootparam_init(struct mic_device *mdev)
{
 struct mic_bootparam *bootparam = mdev->dp;

 bootparam->magic = cpu_to_le32(MIC_MAGIC);
 bootparam->h2c_config_db = -1;
 bootparam->node_id = mdev->id + 1;
 bootparam->scif_host_dma_addr = 0x0;
 bootparam->scif_card_dma_addr = 0x0;
 bootparam->c2h_scif_db = -1;
 bootparam->h2c_scif_db = -1;
}
