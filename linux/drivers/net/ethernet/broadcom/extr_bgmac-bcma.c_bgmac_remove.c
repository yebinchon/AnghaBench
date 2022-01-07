
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int mii_bus; } ;
struct bcma_device {int dummy; } ;


 struct bgmac* bcma_get_drvdata (struct bcma_device*) ;
 int bcma_mdio_mii_unregister (int ) ;
 int bcma_set_drvdata (struct bcma_device*,int *) ;
 int bgmac_enet_remove (struct bgmac*) ;
 int kfree (struct bgmac*) ;

__attribute__((used)) static void bgmac_remove(struct bcma_device *core)
{
 struct bgmac *bgmac = bcma_get_drvdata(core);

 bcma_mdio_mii_unregister(bgmac->mii_bus);
 bgmac_enet_remove(bgmac);
 bcma_set_drvdata(core, ((void*)0));
 kfree(bgmac);
}
