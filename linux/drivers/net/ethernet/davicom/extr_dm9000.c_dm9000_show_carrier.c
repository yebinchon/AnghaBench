
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; } ;
struct board_info {int dev; struct mii_if_info mii; struct net_device* ndev; } ;


 int DM9000_NCR ;
 int MII_LPA ;
 unsigned int NCR_FDX ;
 unsigned int NSR_SPEED ;
 int dev_info (int ,char*,int ,...) ;
 unsigned int dm9000_read_locked (struct board_info*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void dm9000_show_carrier(struct board_info *db,
    unsigned carrier, unsigned nsr)
{
 int lpa;
 struct net_device *ndev = db->ndev;
 struct mii_if_info *mii = &db->mii;
 unsigned ncr = dm9000_read_locked(db, DM9000_NCR);

 if (carrier) {
  lpa = mii->mdio_read(mii->dev, mii->phy_id, MII_LPA);
  dev_info(db->dev,
    "%s: link up, %dMbps, %s-duplex, lpa 0x%04X\n",
    ndev->name, (nsr & NSR_SPEED) ? 10 : 100,
    (ncr & NCR_FDX) ? "full" : "half", lpa);
 } else {
  dev_info(db->dev, "%s: link down\n", ndev->name);
 }
}
