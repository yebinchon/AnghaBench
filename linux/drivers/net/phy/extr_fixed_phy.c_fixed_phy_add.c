
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed_phy_status {int dummy; } ;


 int fixed_phy_add_gpiod (unsigned int,int,struct fixed_phy_status*,int *) ;

int fixed_phy_add(unsigned int irq, int phy_addr,
    struct fixed_phy_status *status) {

 return fixed_phy_add_gpiod(irq, phy_addr, status, ((void*)0));
}
