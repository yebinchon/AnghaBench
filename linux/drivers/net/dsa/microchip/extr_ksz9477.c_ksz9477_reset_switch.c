
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ksz_device {scalar_t__ synclko_125; int * regmap; } ;


 int BROADCAST_STORM_PROT_RATE ;
 int BROADCAST_STORM_RATE ;
 int BROADCAST_STORM_VALUE ;
 int REG_SW_GLOBAL_OUTPUT_CTRL__1 ;
 int REG_SW_GLOBAL_SERIAL_CTRL_0 ;
 int REG_SW_INT_MASK__4 ;
 int REG_SW_LUE_CTRL_1 ;
 int REG_SW_MAC_CTRL_2 ;
 int REG_SW_OPERATION ;
 int REG_SW_PORT_INT_MASK__4 ;
 int REG_SW_PORT_INT_STATUS__4 ;
 int SPI_AUTO_EDGE_DETECTION ;
 int SWITCH_INT_MASK ;
 int SW_AGING_ENABLE ;
 int SW_ENABLE_REFCLKO ;
 int SW_FLUSH_MSTP_TABLE ;
 int SW_FLUSH_STP_TABLE ;
 int SW_LINK_AUTO_AGING ;
 int SW_REFCLKO_IS_125MHZ ;
 int SW_RESET ;
 int SW_SRC_ADDR_FILTER ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_read32 (struct ksz_device*,int ,int *) ;
 int ksz_read8 (struct ksz_device*,int ,int*) ;
 int ksz_write32 (struct ksz_device*,int ,int) ;
 int ksz_write8 (struct ksz_device*,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int ksz9477_reset_switch(struct ksz_device *dev)
{
 u8 data8;
 u32 data32;


 ksz_cfg(dev, REG_SW_OPERATION, SW_RESET, 1);


 regmap_update_bits(dev->regmap[0], REG_SW_GLOBAL_SERIAL_CTRL_0,
      SPI_AUTO_EDGE_DETECTION, 0);


 ksz_read8(dev, REG_SW_LUE_CTRL_1, &data8);
 data8 = SW_AGING_ENABLE | SW_LINK_AUTO_AGING |
       SW_SRC_ADDR_FILTER | SW_FLUSH_STP_TABLE | SW_FLUSH_MSTP_TABLE;
 ksz_write8(dev, REG_SW_LUE_CTRL_1, data8);


 ksz_write32(dev, REG_SW_INT_MASK__4, SWITCH_INT_MASK);
 ksz_write32(dev, REG_SW_PORT_INT_MASK__4, 0x7F);
 ksz_read32(dev, REG_SW_PORT_INT_STATUS__4, &data32);


 regmap_update_bits(dev->regmap[1], REG_SW_MAC_CTRL_2,
      BROADCAST_STORM_RATE,
      (BROADCAST_STORM_VALUE *
      BROADCAST_STORM_PROT_RATE) / 100);

 if (dev->synclko_125)
  ksz_write8(dev, REG_SW_GLOBAL_OUTPUT_CTRL__1,
      SW_ENABLE_REFCLKO | SW_REFCLKO_IS_125MHZ);

 return 0;
}
