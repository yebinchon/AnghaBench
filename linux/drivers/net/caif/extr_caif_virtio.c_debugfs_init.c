
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_flow_on; int tx_kicks; int tx_no_mem; int tx_full_ring; int rx_kicks; int rx_nomem; int rx_napi_resched; int rx_napi_complete; } ;
struct cfv_info {TYPE_1__ stats; int debugfs; int ndev; } ;


 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int netdev_name (int ) ;

__attribute__((used)) static inline void debugfs_init(struct cfv_info *cfv)
{
 cfv->debugfs = debugfs_create_dir(netdev_name(cfv->ndev), ((void*)0));

 debugfs_create_u32("rx-napi-complete", 0400, cfv->debugfs,
      &cfv->stats.rx_napi_complete);
 debugfs_create_u32("rx-napi-resched", 0400, cfv->debugfs,
      &cfv->stats.rx_napi_resched);
 debugfs_create_u32("rx-nomem", 0400, cfv->debugfs,
      &cfv->stats.rx_nomem);
 debugfs_create_u32("rx-kicks", 0400, cfv->debugfs,
      &cfv->stats.rx_kicks);
 debugfs_create_u32("tx-full-ring", 0400, cfv->debugfs,
      &cfv->stats.tx_full_ring);
 debugfs_create_u32("tx-no-mem", 0400, cfv->debugfs,
      &cfv->stats.tx_no_mem);
 debugfs_create_u32("tx-kicks", 0400, cfv->debugfs,
      &cfv->stats.tx_kicks);
 debugfs_create_u32("tx-flow-on", 0400, cfv->debugfs,
      &cfv->stats.tx_flow_on);
}
