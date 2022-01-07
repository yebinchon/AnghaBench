
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_mdio_data {scalar_t__ membase; } ;
struct mii_bus {struct sun4i_mdio_data* priv; } ;


 scalar_t__ EMAC_MAC_MADR_REG ;
 scalar_t__ EMAC_MAC_MCMD_REG ;
 scalar_t__ EMAC_MAC_MIND_REG ;
 scalar_t__ EMAC_MAC_MRDD_REG ;
 int ETIMEDOUT ;
 unsigned long MDIO_TIMEOUT ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_mdio_read(struct mii_bus *bus, int mii_id, int regnum)
{
 struct sun4i_mdio_data *data = bus->priv;
 unsigned long timeout_jiffies;
 int value;


 writel((mii_id << 8) | regnum, data->membase + EMAC_MAC_MADR_REG);

 writel(0x1, data->membase + EMAC_MAC_MCMD_REG);


 timeout_jiffies = jiffies + MDIO_TIMEOUT;
 while (readl(data->membase + EMAC_MAC_MIND_REG) & 0x1) {
  if (time_is_before_jiffies(timeout_jiffies))
   return -ETIMEDOUT;
  msleep(1);
 }


 writel(0x0, data->membase + EMAC_MAC_MCMD_REG);

 value = readl(data->membase + EMAC_MAC_MRDD_REG);

 return value;
}
