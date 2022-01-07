
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; int dev; } ;
struct hclgevf_dev {int state; struct pci_dev* pdev; int last_reset_time; int reset_level; } ;


 int HCLGEVF_DRIVER_NAME ;
 int HCLGEVF_STATE_IRQ_INITED ;
 int HNAE3_VF_FUNC_RESET ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int hclgevf_alloc_tqps (struct hclgevf_dev*) ;
 int hclgevf_cmd_init (struct hclgevf_dev*) ;
 int hclgevf_cmd_queue_init (struct hclgevf_dev*) ;
 int hclgevf_cmd_uninit (struct hclgevf_dev*) ;
 int hclgevf_config_gro (struct hclgevf_dev*,int) ;
 int hclgevf_configure (struct hclgevf_dev*) ;
 int hclgevf_init_msi (struct hclgevf_dev*) ;
 int hclgevf_init_vlan_config (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_init (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_uninit (struct hclgevf_dev*) ;
 int hclgevf_pci_init (struct hclgevf_dev*) ;
 int hclgevf_pci_uninit (struct hclgevf_dev*) ;
 int hclgevf_query_vf_resource (struct hclgevf_dev*) ;
 int hclgevf_rss_init_hw (struct hclgevf_dev*) ;
 int hclgevf_set_handle_info (struct hclgevf_dev*) ;
 int hclgevf_set_promisc_mode (struct hclgevf_dev*,int) ;
 int hclgevf_state_init (struct hclgevf_dev*) ;
 int hclgevf_state_uninit (struct hclgevf_dev*) ;
 int hclgevf_uninit_msi (struct hclgevf_dev*) ;
 int jiffies ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hclgevf_init_hdev(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 int ret;

 ret = hclgevf_pci_init(hdev);
 if (ret) {
  dev_err(&pdev->dev, "PCI initialization failed\n");
  return ret;
 }

 ret = hclgevf_cmd_queue_init(hdev);
 if (ret) {
  dev_err(&pdev->dev, "Cmd queue init failed: %d\n", ret);
  goto err_cmd_queue_init;
 }

 ret = hclgevf_cmd_init(hdev);
 if (ret)
  goto err_cmd_init;


 ret = hclgevf_query_vf_resource(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Query vf status error, ret = %d.\n", ret);
  goto err_cmd_init;
 }

 ret = hclgevf_init_msi(hdev);
 if (ret) {
  dev_err(&pdev->dev, "failed(%d) to init MSI/MSI-X\n", ret);
  goto err_cmd_init;
 }

 hclgevf_state_init(hdev);
 hdev->reset_level = HNAE3_VF_FUNC_RESET;

 ret = hclgevf_misc_irq_init(hdev);
 if (ret) {
  dev_err(&pdev->dev, "failed(%d) to init Misc IRQ(vector0)\n",
   ret);
  goto err_misc_irq_init;
 }

 set_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state);

 ret = hclgevf_configure(hdev);
 if (ret) {
  dev_err(&pdev->dev, "failed(%d) to fetch configuration\n", ret);
  goto err_config;
 }

 ret = hclgevf_alloc_tqps(hdev);
 if (ret) {
  dev_err(&pdev->dev, "failed(%d) to allocate TQPs\n", ret);
  goto err_config;
 }

 ret = hclgevf_set_handle_info(hdev);
 if (ret) {
  dev_err(&pdev->dev, "failed(%d) to set handle info\n", ret);
  goto err_config;
 }

 ret = hclgevf_config_gro(hdev, 1);
 if (ret)
  goto err_config;






 if (pdev->revision >= 0x21) {
  ret = hclgevf_set_promisc_mode(hdev, 1);
  if (ret)
   goto err_config;
 }


 ret = hclgevf_rss_init_hw(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "failed(%d) to initialize RSS\n", ret);
  goto err_config;
 }

 ret = hclgevf_init_vlan_config(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "failed(%d) to initialize VLAN config\n", ret);
  goto err_config;
 }

 hdev->last_reset_time = jiffies;
 dev_info(&hdev->pdev->dev, "finished initializing %s driver\n",
   HCLGEVF_DRIVER_NAME);

 return 0;

err_config:
 hclgevf_misc_irq_uninit(hdev);
err_misc_irq_init:
 hclgevf_state_uninit(hdev);
 hclgevf_uninit_msi(hdev);
err_cmd_init:
 hclgevf_cmd_uninit(hdev);
err_cmd_queue_init:
 hclgevf_pci_uninit(hdev);
 clear_bit(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
 return ret;
}
