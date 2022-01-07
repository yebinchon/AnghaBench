
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_blocks; TYPE_1__* fw_mon; } ;
struct iwl_trans {TYPE_2__ dbg; int dev; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ physical; int * block; } ;


 int dma_free_coherent (int ,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static void iwl_pcie_free_fw_monitor(struct iwl_trans *trans)
{
 int i;

 for (i = 0; i < trans->dbg.num_blocks; i++) {
  dma_free_coherent(trans->dev, trans->dbg.fw_mon[i].size,
      trans->dbg.fw_mon[i].block,
      trans->dbg.fw_mon[i].physical);
  trans->dbg.fw_mon[i].block = ((void*)0);
  trans->dbg.fw_mon[i].physical = 0;
  trans->dbg.fw_mon[i].size = 0;
  trans->dbg.num_blocks--;
 }
}
