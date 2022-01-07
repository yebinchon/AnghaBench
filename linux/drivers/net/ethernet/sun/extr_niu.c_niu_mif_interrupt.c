
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; int dev; } ;


 int ENODEV ;
 int MIF_STATUS ;
 int NIU_FLAGS_XMAC ;
 int XRXMAC_STATUS ;
 int XRXMAC_STATUS_PHY_MDINT ;
 int netdev_err (int ,char*,unsigned long long,int) ;
 int nr64 (int ) ;
 int nr64_mac (int ) ;

__attribute__((used)) static int niu_mif_interrupt(struct niu *np)
{
 u64 mif_status = nr64(MIF_STATUS);
 int phy_mdint = 0;

 if (np->flags & NIU_FLAGS_XMAC) {
  u64 xrxmac_stat = nr64_mac(XRXMAC_STATUS);

  if (xrxmac_stat & XRXMAC_STATUS_PHY_MDINT)
   phy_mdint = 1;
 }

 netdev_err(np->dev, "MIF interrupt, stat[%llx] phy_mdint(%d)\n",
     (unsigned long long)mif_status, phy_mdint);

 return -ENODEV;
}
