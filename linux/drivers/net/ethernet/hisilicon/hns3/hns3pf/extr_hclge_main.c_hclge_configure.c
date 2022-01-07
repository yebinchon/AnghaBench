
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_pg; int num_tc; scalar_t__ hw_pfc_map; } ;
struct TYPE_5__ {int speed; int phy_addr; int media_type; int mac_addr; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct hclge_dev {int tc_max; int fd_en; int pfc_max; int affinity_mask; TYPE_4__* pdev; int tx_sch_mode; int hw_tc_map; TYPE_3__ tm_info; TYPE_2__ hw; int fd_active_type; int wanted_umv_size; int num_rx_desc; int num_tx_desc; int rx_buf_len; int rss_size_max; scalar_t__ base_tqp_pid; int num_vmdq_vport; } ;
struct hclge_cfg {int tc_num; int speed_ability; int default_speed; int umv_space; int tqp_desc_num; int phy_addr; int media_type; int mac_addr; int rx_buf_len; int rss_size_max; int vmdq_vport_num; } ;
struct TYPE_8__ {int dev; int devfn; } ;


 int HCLGE_FD_RULE_NONE ;
 int HCLGE_FLAG_TC_BASE_SCH_MODE ;
 int HNAE3_MAX_TC ;
 unsigned int PCI_FUNC (int ) ;
 int cpumask_local_spread (unsigned int,int ) ;
 int cpumask_of_node (int ) ;
 int cpumask_set_cpu (int ,int *) ;
 unsigned int cpumask_weight (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_to_node (int *) ;
 int dev_warn (int *,char*,int) ;
 int ether_addr_copy (int ,int ) ;
 int hclge_get_cfg (struct hclge_dev*,struct hclge_cfg*) ;
 int hclge_init_kdump_kernel_config (struct hclge_dev*) ;
 int hclge_parse_link_mode (struct hclge_dev*,int ) ;
 int hclge_parse_speed (int ,int *) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;
 scalar_t__ hnae3_dev_fd_supported (struct hclge_dev*) ;
 int hnae3_set_bit (int ,unsigned int,int) ;

__attribute__((used)) static int hclge_configure(struct hclge_dev *hdev)
{
 struct hclge_cfg cfg;
 unsigned int i;
 int ret;

 ret = hclge_get_cfg(hdev, &cfg);
 if (ret) {
  dev_err(&hdev->pdev->dev, "get mac mode error %d.\n", ret);
  return ret;
 }

 hdev->num_vmdq_vport = cfg.vmdq_vport_num;
 hdev->base_tqp_pid = 0;
 hdev->rss_size_max = cfg.rss_size_max;
 hdev->rx_buf_len = cfg.rx_buf_len;
 ether_addr_copy(hdev->hw.mac.mac_addr, cfg.mac_addr);
 hdev->hw.mac.media_type = cfg.media_type;
 hdev->hw.mac.phy_addr = cfg.phy_addr;
 hdev->num_tx_desc = cfg.tqp_desc_num;
 hdev->num_rx_desc = cfg.tqp_desc_num;
 hdev->tm_info.num_pg = 1;
 hdev->tc_max = cfg.tc_num;
 hdev->tm_info.hw_pfc_map = 0;
 hdev->wanted_umv_size = cfg.umv_space;

 if (hnae3_dev_fd_supported(hdev)) {
  hdev->fd_en = 1;
  hdev->fd_active_type = HCLGE_FD_RULE_NONE;
 }

 ret = hclge_parse_speed(cfg.default_speed, &hdev->hw.mac.speed);
 if (ret) {
  dev_err(&hdev->pdev->dev, "Get wrong speed ret=%d.\n", ret);
  return ret;
 }

 hclge_parse_link_mode(hdev, cfg.speed_ability);

 if ((hdev->tc_max > HNAE3_MAX_TC) ||
     (hdev->tc_max < 1)) {
  dev_warn(&hdev->pdev->dev, "TC num = %d.\n",
    hdev->tc_max);
  hdev->tc_max = 1;
 }


 if (!hnae3_dev_dcb_supported(hdev)) {
  hdev->tc_max = 1;
  hdev->pfc_max = 0;
 } else {
  hdev->pfc_max = hdev->tc_max;
 }

 hdev->tm_info.num_tc = 1;


 for (i = 0; i < hdev->tm_info.num_tc; i++)
  hnae3_set_bit(hdev->hw_tc_map, i, 1);

 hdev->tx_sch_mode = HCLGE_FLAG_TC_BASE_SCH_MODE;

 hclge_init_kdump_kernel_config(hdev);


 i = cpumask_weight(cpumask_of_node(dev_to_node(&hdev->pdev->dev)));
 i = i ? PCI_FUNC(hdev->pdev->devfn) % i : 0;
 cpumask_set_cpu(cpumask_local_spread(i, dev_to_node(&hdev->pdev->dev)),
   &hdev->affinity_mask);

 return ret;
}
