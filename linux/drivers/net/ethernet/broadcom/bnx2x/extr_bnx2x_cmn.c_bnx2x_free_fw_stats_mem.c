
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {scalar_t__ fw_stats_req_sz; scalar_t__ fw_stats_data_sz; int fw_stats_mapping; int fw_stats; } ;


 int BNX2X_PCI_FREE (int ,int ,scalar_t__) ;

__attribute__((used)) static void bnx2x_free_fw_stats_mem(struct bnx2x *bp)
{
 BNX2X_PCI_FREE(bp->fw_stats, bp->fw_stats_mapping,
         bp->fw_stats_data_sz + bp->fw_stats_req_sz);
 return;
}
