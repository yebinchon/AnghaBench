
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct msix_entry {int dummy; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_ceqs {int num_ceqs; int * ceq; struct hinic_hwif* hwif; } ;


 int HINIC_CEQ ;
 int dev_err (int *,char*,int) ;
 int init_eq (int *,struct hinic_hwif*,int ,int,int ,int ,struct msix_entry) ;
 int remove_eq (int *) ;

int hinic_ceqs_init(struct hinic_ceqs *ceqs, struct hinic_hwif *hwif,
      int num_ceqs, u32 q_len, u32 page_size,
      struct msix_entry *msix_entries)
{
 struct pci_dev *pdev = hwif->pdev;
 int i, q_id, err;

 ceqs->hwif = hwif;
 ceqs->num_ceqs = num_ceqs;

 for (q_id = 0; q_id < num_ceqs; q_id++) {
  err = init_eq(&ceqs->ceq[q_id], hwif, HINIC_CEQ, q_id, q_len,
         page_size, msix_entries[q_id]);
  if (err) {
   dev_err(&pdev->dev, "Failed to init ceq %d\n", q_id);
   goto err_init_ceq;
  }
 }

 return 0;

err_init_ceq:
 for (i = 0; i < q_id; i++)
  remove_eq(&ceqs->ceq[i]);

 return err;
}
