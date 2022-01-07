
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int dev; } ;


 int DM9000_NCR ;
 int NCR_MAC_LBK ;
 int NCR_RST ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int ior (struct board_info*,int ) ;
 int iow (struct board_info*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
dm9000_reset(struct board_info *db)
{
 dev_dbg(db->dev, "resetting device\n");





 iow(db, DM9000_NCR, NCR_RST | NCR_MAC_LBK);
 udelay(100);
 if (ior(db, DM9000_NCR) & 1)
  dev_err(db->dev, "dm9000 did not respond to first reset\n");

 iow(db, DM9000_NCR, 0);
 iow(db, DM9000_NCR, NCR_RST | NCR_MAC_LBK);
 udelay(100);
 if (ior(db, DM9000_NCR) & 1)
  dev_err(db->dev, "dm9000 did not respond to second reset\n");
}
