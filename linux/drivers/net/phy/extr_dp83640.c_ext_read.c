
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {struct dp83640_private* priv; } ;
struct dp83640_private {TYPE_1__* clock; } ;
struct TYPE_2__ {int page; } ;


 int PAGESEL ;
 int broadcast_write (struct phy_device*,int ,int) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int ext_read(struct phy_device *phydev, int page, u32 regnum)
{
 struct dp83640_private *dp83640 = phydev->priv;
 int val;

 if (dp83640->clock->page != page) {
  broadcast_write(phydev, PAGESEL, page);
  dp83640->clock->page = page;
 }
 val = phy_read(phydev, regnum);

 return val;
}
