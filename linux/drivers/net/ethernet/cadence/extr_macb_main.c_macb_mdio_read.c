
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct macb* priv; } ;
struct macb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CODE ;
 int DATA ;
 int MACB_BF (int ,int) ;
 int MACB_BFEXT (int ,int ) ;
 int MACB_MAN_CODE ;
 int MACB_MAN_READ ;
 int MACB_MAN_SOF ;
 int MAN ;
 int PHYA ;
 int REGA ;
 int RW ;
 int SOF ;
 int macb_mdio_wait_for_idle (struct macb*) ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int macb_mdio_read(struct mii_bus *bus, int mii_id, int regnum)
{
 struct macb *bp = bus->priv;
 int status;

 status = pm_runtime_get_sync(&bp->pdev->dev);
 if (status < 0)
  goto mdio_pm_exit;

 status = macb_mdio_wait_for_idle(bp);
 if (status < 0)
  goto mdio_read_exit;

 macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_SOF)
         | MACB_BF(RW, MACB_MAN_READ)
         | MACB_BF(PHYA, mii_id)
         | MACB_BF(REGA, regnum)
         | MACB_BF(CODE, MACB_MAN_CODE)));

 status = macb_mdio_wait_for_idle(bp);
 if (status < 0)
  goto mdio_read_exit;

 status = MACB_BFEXT(DATA, macb_readl(bp, MAN));

mdio_read_exit:
 pm_runtime_mark_last_busy(&bp->pdev->dev);
 pm_runtime_put_autosuspend(&bp->pdev->dev);
mdio_pm_exit:
 return status;
}
