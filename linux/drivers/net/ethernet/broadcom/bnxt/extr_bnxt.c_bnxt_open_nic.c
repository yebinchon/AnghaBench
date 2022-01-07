
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int __bnxt_open_nic (struct bnxt*,int,int) ;
 int dev_close (int ) ;
 int netdev_err (int ,char*,int) ;

int bnxt_open_nic(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
 int rc = 0;

 rc = __bnxt_open_nic(bp, irq_re_init, link_re_init);
 if (rc) {
  netdev_err(bp->dev, "nic open fail (rc: %x)\n", rc);
  dev_close(bp->dev);
 }
 return rc;
}
