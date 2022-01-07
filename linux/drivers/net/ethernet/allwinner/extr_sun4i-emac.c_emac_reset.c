
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_board_info {scalar_t__ membase; int dev; } ;


 scalar_t__ EMAC_CTL_REG ;
 int EMAC_CTL_RESET ;
 int dev_dbg (int ,char*) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void emac_reset(struct emac_board_info *db)
{
 dev_dbg(db->dev, "resetting device\n");


 writel(0, db->membase + EMAC_CTL_REG);
 udelay(200);
 writel(EMAC_CTL_RESET, db->membase + EMAC_CTL_REG);
 udelay(200);
}
