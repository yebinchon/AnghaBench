
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int up_ver ;
typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_version_info {char* ver; scalar_t__ status; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;


 int EINVAL ;
 int HINIC_MGMT_VERSION_MAX_LEN ;
 int HINIC_PORT_CMD_GET_MGMT_VERSION ;
 int dev_err (int *,char*,int,scalar_t__,int ) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_version_info*,int,struct hinic_version_info*,int *) ;
 int snprintf (int *,int ,char*,char*) ;

int hinic_get_mgmt_version(struct hinic_dev *nic_dev, u8 *mgmt_ver)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_version_info up_ver = {0};
 struct hinic_hwif *hwif;
 struct pci_dev *pdev;
 u16 out_size;
 int err;

 if (!hwdev)
  return -EINVAL;

 hwif = hwdev->hwif;
 pdev = hwif->pdev;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_MGMT_VERSION,
     &up_ver, sizeof(up_ver), &up_ver,
     &out_size);
 if (err || !out_size || up_ver.status) {
  dev_err(&pdev->dev,
   "Failed to get mgmt version, err: %d, status: 0x%x, out size: 0x%x\n",
   err, up_ver.status, out_size);
  return -EINVAL;
 }

 snprintf(mgmt_ver, HINIC_MGMT_VERSION_MAX_LEN, "%s", up_ver.ver);

 return 0;
}
