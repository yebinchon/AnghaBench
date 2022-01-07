
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct qca8k_priv {int dummy; } ;


 int EINVAL ;
 scalar_t__ PHY_MAX_ADDR ;
 scalar_t__ QCA8K_MDIO_MASTER_BUSY ;
 int QCA8K_MDIO_MASTER_CTRL ;
 scalar_t__ QCA8K_MDIO_MASTER_DATA (int ) ;
 scalar_t__ QCA8K_MDIO_MASTER_EN ;
 scalar_t__ QCA8K_MDIO_MASTER_MAX_REG ;
 scalar_t__ QCA8K_MDIO_MASTER_PHY_ADDR (scalar_t__) ;
 scalar_t__ QCA8K_MDIO_MASTER_REG_ADDR (scalar_t__) ;
 scalar_t__ QCA8K_MDIO_MASTER_WRITE ;
 int qca8k_busy_wait (struct qca8k_priv*,int ,scalar_t__) ;
 scalar_t__ qca8k_port_to_phy (int) ;
 int qca8k_write (struct qca8k_priv*,int ,scalar_t__) ;

__attribute__((used)) static int
qca8k_mdio_write(struct qca8k_priv *priv, int port, u32 regnum, u16 data)
{
 u32 phy, val;

 if (regnum >= QCA8K_MDIO_MASTER_MAX_REG)
  return -EINVAL;




 phy = qca8k_port_to_phy(port) % PHY_MAX_ADDR;
 val = QCA8K_MDIO_MASTER_BUSY | QCA8K_MDIO_MASTER_EN |
       QCA8K_MDIO_MASTER_WRITE | QCA8K_MDIO_MASTER_PHY_ADDR(phy) |
       QCA8K_MDIO_MASTER_REG_ADDR(regnum) |
       QCA8K_MDIO_MASTER_DATA(data);

 qca8k_write(priv, QCA8K_MDIO_MASTER_CTRL, val);

 return qca8k_busy_wait(priv, QCA8K_MDIO_MASTER_CTRL,
  QCA8K_MDIO_MASTER_BUSY);
}
