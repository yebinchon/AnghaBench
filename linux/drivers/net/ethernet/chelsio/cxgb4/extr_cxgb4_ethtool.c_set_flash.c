
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct firmware {int size; int data; } ;
struct ethtool_flash {char* data; } ;
struct adapter {unsigned int pf; int flags; unsigned int mbox; int pdev_dev; } ;


 int CXGB4_FULL_INIT_DONE ;
 int EOPNOTSUPP ;
 int PCIE_FW_A ;
 unsigned int PCIE_FW_MASTER_G (int) ;
 int PCIE_FW_MASTER_M ;
 int PCIE_FW_MASTER_VLD_F ;
 int dev_info (int ,char*,char*) ;
 int dev_warn (int ,char*) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int t4_fw_upgrade (struct adapter*,unsigned int,int ,int ,int) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int set_flash(struct net_device *netdev, struct ethtool_flash *ef)
{
 int ret;
 const struct firmware *fw;
 struct adapter *adap = netdev2adap(netdev);
 unsigned int mbox = PCIE_FW_MASTER_M + 1;
 u32 pcie_fw;
 unsigned int master;
 u8 master_vld = 0;

 pcie_fw = t4_read_reg(adap, PCIE_FW_A);
 master = PCIE_FW_MASTER_G(pcie_fw);
 if (pcie_fw & PCIE_FW_MASTER_VLD_F)
  master_vld = 1;

 if (master_vld && (master != adap->pf)) {
  dev_warn(adap->pdev_dev,
    "cxgb4 driver needs to be loaded as MASTER to support FW flash\n");
  return -EOPNOTSUPP;
 }

 ef->data[sizeof(ef->data) - 1] = '\0';
 ret = request_firmware(&fw, ef->data, adap->pdev_dev);
 if (ret < 0)
  return ret;






 if (adap->flags & CXGB4_FULL_INIT_DONE)
  mbox = adap->mbox;

 ret = t4_fw_upgrade(adap, mbox, fw->data, fw->size, 1);
 release_firmware(fw);
 if (!ret)
  dev_info(adap->pdev_dev,
    "loaded firmware %s, reload cxgb4 driver\n", ef->data);
 return ret;
}
