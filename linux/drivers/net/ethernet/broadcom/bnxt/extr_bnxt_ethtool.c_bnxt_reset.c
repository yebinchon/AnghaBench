
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct bnxt {int hwrm_spec_code; int pdev; } ;


 int BNXT_FW_RESET_AP ;
 int BNXT_FW_RESET_CHIP ;
 int BNXT_PF (struct bnxt*) ;
 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ETH_RESET_ALL ;
 scalar_t__ ETH_RESET_AP ;
 int bnxt_firmware_reset (struct net_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ pci_vfs_assigned (int ) ;

__attribute__((used)) static int bnxt_reset(struct net_device *dev, u32 *flags)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc = 0;

 if (!BNXT_PF(bp)) {
  netdev_err(dev, "Reset is not supported from a VF\n");
  return -EOPNOTSUPP;
 }

 if (pci_vfs_assigned(bp->pdev)) {
  netdev_err(dev,
      "Reset not allowed when VFs are assigned to VMs\n");
  return -EBUSY;
 }

 if (*flags == ETH_RESET_ALL) {

  if (bp->hwrm_spec_code < 0x10803)
   return -EOPNOTSUPP;

  rc = bnxt_firmware_reset(dev, BNXT_FW_RESET_CHIP);
  if (!rc) {
   netdev_info(dev, "Reset request successful. Reload driver to complete reset\n");
   *flags = 0;
  }
 } else if (*flags == ETH_RESET_AP) {

  if (bp->hwrm_spec_code < 0x10803)
   return -EOPNOTSUPP;

  rc = bnxt_firmware_reset(dev, BNXT_FW_RESET_AP);
  if (!rc) {
   netdev_info(dev, "Reset Application Processor request successful.\n");
   *flags = 0;
  }
 } else {
  rc = -EINVAL;
 }

 return rc;
}
