
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; int dev; } ;
struct hclgevf_dev {struct pci_dev* pdev; } ;


 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int hclgevf_cmd_init (struct hclgevf_dev*) ;
 int hclgevf_config_gro (struct hclgevf_dev*,int) ;
 int hclgevf_init_vlan_config (struct hclgevf_dev*) ;
 int hclgevf_pci_reset (struct hclgevf_dev*) ;
 int hclgevf_rss_init_hw (struct hclgevf_dev*) ;
 int hclgevf_set_promisc_mode (struct hclgevf_dev*,int) ;

__attribute__((used)) static int hclgevf_reset_hdev(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 int ret;

 ret = hclgevf_pci_reset(hdev);
 if (ret) {
  dev_err(&pdev->dev, "pci reset failed %d\n", ret);
  return ret;
 }

 ret = hclgevf_cmd_init(hdev);
 if (ret) {
  dev_err(&pdev->dev, "cmd failed %d\n", ret);
  return ret;
 }

 ret = hclgevf_rss_init_hw(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "failed(%d) to initialize RSS\n", ret);
  return ret;
 }

 ret = hclgevf_config_gro(hdev, 1);
 if (ret)
  return ret;

 ret = hclgevf_init_vlan_config(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "failed(%d) to initialize VLAN config\n", ret);
  return ret;
 }

 if (pdev->revision >= 0x21) {
  ret = hclgevf_set_promisc_mode(hdev, 1);
  if (ret)
   return ret;
 }

 dev_info(&hdev->pdev->dev, "Reset done\n");

 return 0;
}
