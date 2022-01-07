
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ksz_device {int dummy; } ;


 int MMD_SETUP (int ,int ) ;
 int PORT_MMD_OP_DATA_NO_INCR ;
 int PORT_MMD_OP_INDEX ;
 int REG_PORT_PHY_MMD_INDEX_DATA ;
 int REG_PORT_PHY_MMD_SETUP ;
 int ksz_pwrite16 (struct ksz_device*,int,int ,int ) ;

__attribute__((used)) static void ksz9477_port_mmd_write(struct ksz_device *dev, int port,
       u8 dev_addr, u16 reg_addr, u16 val)
{
 ksz_pwrite16(dev, port, REG_PORT_PHY_MMD_SETUP,
       MMD_SETUP(PORT_MMD_OP_INDEX, dev_addr));
 ksz_pwrite16(dev, port, REG_PORT_PHY_MMD_INDEX_DATA, reg_addr);
 ksz_pwrite16(dev, port, REG_PORT_PHY_MMD_SETUP,
       MMD_SETUP(PORT_MMD_OP_DATA_NO_INCR, dev_addr));
 ksz_pwrite16(dev, port, REG_PORT_PHY_MMD_INDEX_DATA, val);
}
