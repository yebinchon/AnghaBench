
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct msix_entry {int dummy; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_aeqs {int num_aeqs; int workq; int * aeq; struct hinic_hwif* hwif; } ;


 int ENOMEM ;
 int HINIC_AEQ ;
 int HINIC_EQS_WQ_NAME ;
 int create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*,int) ;
 int init_eq (int *,struct hinic_hwif*,int ,int,int ,int ,struct msix_entry) ;
 int remove_eq (int *) ;

int hinic_aeqs_init(struct hinic_aeqs *aeqs, struct hinic_hwif *hwif,
      int num_aeqs, u32 q_len, u32 page_size,
      struct msix_entry *msix_entries)
{
 struct pci_dev *pdev = hwif->pdev;
 int err, i, q_id;

 aeqs->workq = create_singlethread_workqueue(HINIC_EQS_WQ_NAME);
 if (!aeqs->workq)
  return -ENOMEM;

 aeqs->hwif = hwif;
 aeqs->num_aeqs = num_aeqs;

 for (q_id = 0; q_id < num_aeqs; q_id++) {
  err = init_eq(&aeqs->aeq[q_id], hwif, HINIC_AEQ, q_id, q_len,
         page_size, msix_entries[q_id]);
  if (err) {
   dev_err(&pdev->dev, "Failed to init aeq %d\n", q_id);
   goto err_init_aeq;
  }
 }

 return 0;

err_init_aeq:
 for (i = 0; i < q_id; i++)
  remove_eq(&aeqs->aeq[i]);

 destroy_workqueue(aeqs->workq);
 return err;
}
