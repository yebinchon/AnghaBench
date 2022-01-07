
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vport_stats ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_vport_stats {int dummy; } ;
struct hinic_port_stats_info {int stats_size; int func_id; int stats_version; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
struct hinic_cmd_vport_stats {int stats; scalar_t__ status; int member_0; } ;
typedef int stats_info ;


 int EFAULT ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_VPORT_STAT ;
 int HINIC_PORT_STATS_VERSION ;
 int dev_err (int *,char*,int,scalar_t__,int) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_stats_info*,int,struct hinic_cmd_vport_stats*,int*) ;
 int memcpy (struct hinic_vport_stats*,int *,int) ;

int hinic_get_vport_stats(struct hinic_dev *nic_dev,
     struct hinic_vport_stats *stats)
{
 struct hinic_cmd_vport_stats vport_stats = { 0 };
 struct hinic_port_stats_info stats_info = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 u16 out_size = sizeof(vport_stats);
 struct pci_dev *pdev = hwif->pdev;
 int err;

 stats_info.stats_version = HINIC_PORT_STATS_VERSION;
 stats_info.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 stats_info.stats_size = sizeof(vport_stats);

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_VPORT_STAT,
     &stats_info, sizeof(stats_info),
     &vport_stats, &out_size);
 if (err || !out_size || vport_stats.status) {
  dev_err(&pdev->dev,
   "Failed to get function statistics, err: %d, status: 0x%x, out size: 0x%x\n",
   err, vport_stats.status, out_size);
  return -EFAULT;
 }

 memcpy(stats, &vport_stats.stats, sizeof(*stats));
 return 0;
}
