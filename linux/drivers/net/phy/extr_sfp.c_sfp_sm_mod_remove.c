
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int dev; int id; scalar_t__ mod_phy; int sfp_bus; } ;


 int dev_info (int ,char*) ;
 int memset (int *,int ,int) ;
 int sfp_hwmon_remove (struct sfp*) ;
 int sfp_module_remove (int ) ;
 int sfp_module_tx_disable (struct sfp*) ;
 int sfp_sm_phy_detach (struct sfp*) ;

__attribute__((used)) static void sfp_sm_mod_remove(struct sfp *sfp)
{
 sfp_module_remove(sfp->sfp_bus);

 sfp_hwmon_remove(sfp);

 if (sfp->mod_phy)
  sfp_sm_phy_detach(sfp);

 sfp_module_tx_disable(sfp);

 memset(&sfp->id, 0, sizeof(sfp->id));

 dev_info(sfp->dev, "module removed\n");
}
