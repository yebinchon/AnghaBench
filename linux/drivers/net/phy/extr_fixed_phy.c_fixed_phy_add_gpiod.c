
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct fixed_phy_status {int dummy; } ;
struct fixed_phy {int addr; int node; struct gpio_desc* link_gpiod; struct fixed_phy_status status; int seqcount; } ;
struct fixed_mdio_bus {int phys; TYPE_1__* mii_bus; } ;
struct TYPE_2__ {unsigned int* irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PHY_POLL ;
 int fixed_phy_update (struct fixed_phy*) ;
 struct fixed_phy* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct fixed_mdio_bus platform_fmb ;
 int seqcount_init (int *) ;
 int swphy_validate_state (struct fixed_phy_status*) ;

__attribute__((used)) static int fixed_phy_add_gpiod(unsigned int irq, int phy_addr,
          struct fixed_phy_status *status,
          struct gpio_desc *gpiod)
{
 int ret;
 struct fixed_mdio_bus *fmb = &platform_fmb;
 struct fixed_phy *fp;

 ret = swphy_validate_state(status);
 if (ret < 0)
  return ret;

 fp = kzalloc(sizeof(*fp), GFP_KERNEL);
 if (!fp)
  return -ENOMEM;

 seqcount_init(&fp->seqcount);

 if (irq != PHY_POLL)
  fmb->mii_bus->irq[phy_addr] = irq;

 fp->addr = phy_addr;
 fp->status = *status;
 fp->link_gpiod = gpiod;

 fixed_phy_update(fp);

 list_add_tail(&fp->node, &fmb->phys);

 return 0;
}
