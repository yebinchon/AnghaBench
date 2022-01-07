
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; struct pci_dev* pdev; } ;
struct hclgevf_dev {int keep_alive_task; int keep_alive_timer; } ;


 int INIT_WORK (int *,int ) ;
 int dev_err (int *,char*) ;
 int hclgevf_alloc_hdev (struct hnae3_ae_dev*) ;
 int hclgevf_init_hdev (struct hclgevf_dev*) ;
 int hclgevf_keep_alive_task ;
 int hclgevf_keep_alive_timer ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int hclgevf_init_ae_dev(struct hnae3_ae_dev *ae_dev)
{
 struct pci_dev *pdev = ae_dev->pdev;
 struct hclgevf_dev *hdev;
 int ret;

 ret = hclgevf_alloc_hdev(ae_dev);
 if (ret) {
  dev_err(&pdev->dev, "hclge device allocation failed\n");
  return ret;
 }

 ret = hclgevf_init_hdev(ae_dev->priv);
 if (ret) {
  dev_err(&pdev->dev, "hclge device initialization failed\n");
  return ret;
 }

 hdev = ae_dev->priv;
 timer_setup(&hdev->keep_alive_timer, hclgevf_keep_alive_timer, 0);
 INIT_WORK(&hdev->keep_alive_task, hclgevf_keep_alive_task);

 return 0;
}
