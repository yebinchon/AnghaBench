
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int flag; int dv_buf_size; int tx_buf_size; int pkt_buf_size; int hw_tc_map; int num_req_vfs; int num_vmdq_vport; int num_alloc_vport; int num_rx_desc; int num_tx_desc; int num_tqps; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_FLAG_DCB_ENABLE ;
 int HCLGE_FLAG_MAIN ;
 int HCLGE_FLAG_MQPRIO_ENABLE ;
 int dev_info (struct device*,char*,...) ;

__attribute__((used)) static void hclge_info_show(struct hclge_dev *hdev)
{
 struct device *dev = &hdev->pdev->dev;

 dev_info(dev, "PF info begin:\n");

 dev_info(dev, "Task queue pairs numbers: %d\n", hdev->num_tqps);
 dev_info(dev, "Desc num per TX queue: %d\n", hdev->num_tx_desc);
 dev_info(dev, "Desc num per RX queue: %d\n", hdev->num_rx_desc);
 dev_info(dev, "Numbers of vports: %d\n", hdev->num_alloc_vport);
 dev_info(dev, "Numbers of vmdp vports: %d\n", hdev->num_vmdq_vport);
 dev_info(dev, "Numbers of VF for this PF: %d\n", hdev->num_req_vfs);
 dev_info(dev, "HW tc map: %d\n", hdev->hw_tc_map);
 dev_info(dev, "Total buffer size for TX/RX: %d\n", hdev->pkt_buf_size);
 dev_info(dev, "TX buffer size for each TC: %d\n", hdev->tx_buf_size);
 dev_info(dev, "DV buffer size for each TC: %d\n", hdev->dv_buf_size);
 dev_info(dev, "This is %s PF\n",
   hdev->flag & HCLGE_FLAG_MAIN ? "main" : "not main");
 dev_info(dev, "DCB %s\n",
   hdev->flag & HCLGE_FLAG_DCB_ENABLE ? "enable" : "disable");
 dev_info(dev, "MQPRIO %s\n",
   hdev->flag & HCLGE_FLAG_MQPRIO_ENABLE ? "enable" : "disable");

 dev_info(dev, "PF info end.\n");
}
