
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int bnxt_alloc_mem (struct bnxt*,int) ;
 int bnxt_free_mem (struct bnxt*,int) ;
 int bnxt_free_skbs (struct bnxt*) ;
 int bnxt_init_nic (struct bnxt*,int) ;
 int dev_close (int ) ;
 int netdev_err (int ,char*,int) ;

int bnxt_half_open_nic(struct bnxt *bp)
{
 int rc = 0;

 rc = bnxt_alloc_mem(bp, 0);
 if (rc) {
  netdev_err(bp->dev, "bnxt_alloc_mem err: %x\n", rc);
  goto half_open_err;
 }
 rc = bnxt_init_nic(bp, 0);
 if (rc) {
  netdev_err(bp->dev, "bnxt_init_nic err: %x\n", rc);
  goto half_open_err;
 }
 return 0;

half_open_err:
 bnxt_free_skbs(bp);
 bnxt_free_mem(bp, 0);
 dev_close(bp->dev);
 return rc;
}
