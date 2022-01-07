
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int * mod_phy; int sfp_bus; } ;


 int phy_device_free (int *) ;
 int phy_device_remove (int *) ;
 int phy_stop (int *) ;
 int sfp_remove_phy (int ) ;

__attribute__((used)) static void sfp_sm_phy_detach(struct sfp *sfp)
{
 phy_stop(sfp->mod_phy);
 sfp_remove_phy(sfp->sfp_bus);
 phy_device_remove(sfp->mod_phy);
 phy_device_free(sfp->mod_phy);
 sfp->mod_phy = ((void*)0);
}
