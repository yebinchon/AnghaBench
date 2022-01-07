
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int netdev_info (int ,char*) ;

__attribute__((used)) static void bnxt_print_admin_err(struct bnxt *bp)
{
 netdev_info(bp->dev, "PF does not have admin privileges to flash or reset the device\n");
}
