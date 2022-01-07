
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int mib_port_cnt; int * regmap; } ;


 int PORT_LEARN_DISABLE ;
 int P_STP_CTRL ;
 int REG_SW_LUE_CTRL_2 ;
 int SW_FLUSH_DYN_MAC_TABLE ;
 int SW_FLUSH_OPTION_DYN_MAC ;
 int SW_FLUSH_OPTION_M ;
 int SW_FLUSH_OPTION_S ;
 int SW_FLUSH_STP_TABLE ;
 int S_FLUSH_TABLE_CTRL ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;
 int ksz_pwrite8 (struct ksz_device*,int,int ,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void ksz9477_flush_dyn_mac_table(struct ksz_device *dev, int port)
{
 u8 data;

 regmap_update_bits(dev->regmap[0], REG_SW_LUE_CTRL_2,
      SW_FLUSH_OPTION_M << SW_FLUSH_OPTION_S,
      SW_FLUSH_OPTION_DYN_MAC << SW_FLUSH_OPTION_S);

 if (port < dev->mib_port_cnt) {

  ksz_pread8(dev, port, P_STP_CTRL, &data);
  if (!(data & PORT_LEARN_DISABLE))
   ksz_pwrite8(dev, port, P_STP_CTRL,
        data | PORT_LEARN_DISABLE);
  ksz_cfg(dev, S_FLUSH_TABLE_CTRL, SW_FLUSH_DYN_MAC_TABLE, 1);
  ksz_pwrite8(dev, port, P_STP_CTRL, data);
 } else {

  ksz_cfg(dev, S_FLUSH_TABLE_CTRL, SW_FLUSH_STP_TABLE, 1);
 }
}
