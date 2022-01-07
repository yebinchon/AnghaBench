
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int bnxt_approve_mac (struct bnxt*,int ,int) ;
 int bnxt_fw_init_one_p1 (struct bnxt*) ;
 int bnxt_fw_init_one_p2 (struct bnxt*) ;
 int bnxt_fw_init_one_p3 (struct bnxt*) ;
 int netdev_err (TYPE_1__*,char*) ;

__attribute__((used)) static int bnxt_fw_init_one(struct bnxt *bp)
{
 int rc;

 rc = bnxt_fw_init_one_p1(bp);
 if (rc) {
  netdev_err(bp->dev, "Firmware init phase 1 failed\n");
  return rc;
 }
 rc = bnxt_fw_init_one_p2(bp);
 if (rc) {
  netdev_err(bp->dev, "Firmware init phase 2 failed\n");
  return rc;
 }
 rc = bnxt_approve_mac(bp, bp->dev->dev_addr, 0);
 if (rc)
  return rc;
 bnxt_fw_init_one_p3(bp);
 return 0;
}
