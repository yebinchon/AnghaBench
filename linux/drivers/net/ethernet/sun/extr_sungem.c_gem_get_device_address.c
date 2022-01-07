
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; int name; } ;
struct gem {struct net_device* dev; int pdev; int of_node; } ;
struct TYPE_2__ {unsigned char* id_ethaddr; } ;


 int ETH_ALEN ;
 int get_gem_mac_nonobp (int ,int ) ;
 TYPE_1__* idprom ;
 int memcpy (int ,unsigned char const*,int ) ;
 unsigned char* of_get_property (int ,char*,int *) ;
 int pr_err (char*,int ) ;
 int printk (char*) ;

__attribute__((used)) static int gem_get_device_address(struct gem *gp)
{
 get_gem_mac_nonobp(gp->pdev, gp->dev->dev_addr);

 return 0;
}
