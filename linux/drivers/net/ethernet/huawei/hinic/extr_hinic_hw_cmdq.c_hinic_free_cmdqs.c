
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_func_to_io {int ceqs; } ;
struct hinic_cmdqs {int cmdq_buf_pool; int saved_wqs; int cmdq_pages; int * cmdq; struct hinic_hwif* hwif; } ;
typedef enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;


 int HINIC_CEQ_CMDQ ;
 int HINIC_CMDQ_SYNC ;
 int HINIC_MAX_CMDQ_TYPES ;
 struct hinic_func_to_io* cmdqs_to_func_to_io (struct hinic_cmdqs*) ;
 int devm_kfree (int *,int ) ;
 int dma_pool_destroy (int ) ;
 int free_cmdq (int *) ;
 int hinic_ceq_unregister_cb (int *,int ) ;
 int hinic_wqs_cmdq_free (int *,int ,int) ;

void hinic_free_cmdqs(struct hinic_cmdqs *cmdqs)
{
 struct hinic_func_to_io *func_to_io = cmdqs_to_func_to_io(cmdqs);
 struct hinic_hwif *hwif = cmdqs->hwif;
 struct pci_dev *pdev = hwif->pdev;
 enum hinic_cmdq_type cmdq_type;

 hinic_ceq_unregister_cb(&func_to_io->ceqs, HINIC_CEQ_CMDQ);

 cmdq_type = HINIC_CMDQ_SYNC;
 for (; cmdq_type < HINIC_MAX_CMDQ_TYPES; cmdq_type++)
  free_cmdq(&cmdqs->cmdq[cmdq_type]);

 hinic_wqs_cmdq_free(&cmdqs->cmdq_pages, cmdqs->saved_wqs,
       HINIC_MAX_CMDQ_TYPES);

 devm_kfree(&pdev->dev, cmdqs->saved_wqs);

 dma_pool_destroy(cmdqs->cmdq_buf_pool);
}
