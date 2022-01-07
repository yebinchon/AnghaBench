
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; scalar_t__ rx_nr_rings; } ;


 unsigned int bnxt_hwrm_vnic_alloc (struct bnxt*,int,scalar_t__,int) ;
 unsigned int bnxt_hwrm_vnic_cfg (struct bnxt*,int) ;
 int netdev_err (int ,char*,unsigned int) ;

__attribute__((used)) static int bnxt_setup_nitroa0_vnic(struct bnxt *bp)
{
 unsigned int rc = 0;

 rc = bnxt_hwrm_vnic_alloc(bp, 1, bp->rx_nr_rings - 1, 1);
 if (rc) {
  netdev_err(bp->dev, "Cannot allocate special vnic for NS2 A0: %x\n",
      rc);
  return rc;
 }

 rc = bnxt_hwrm_vnic_cfg(bp, 1);
 if (rc) {
  netdev_err(bp->dev, "Cannot allocate special vnic for NS2 A0: %x\n",
      rc);
  return rc;
 }
 return rc;
}
