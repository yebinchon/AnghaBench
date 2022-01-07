
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct max2165_priv {int bb_filter_8mhz_cfg; int bb_filter_7mhz_cfg; } ;


 int REG_BASEBAND_CTRL ;
 int max2165_mask_write_reg (struct max2165_priv*,int ,int,int) ;

__attribute__((used)) static int max2165_set_bandwidth(struct max2165_priv *priv, u32 bw)
{
 u8 val;

 if (bw == 8000000)
  val = priv->bb_filter_8mhz_cfg;
 else
  val = priv->bb_filter_7mhz_cfg;

 max2165_mask_write_reg(priv, REG_BASEBAND_CTRL, 0xF0, val << 4);

 return 0;
}
