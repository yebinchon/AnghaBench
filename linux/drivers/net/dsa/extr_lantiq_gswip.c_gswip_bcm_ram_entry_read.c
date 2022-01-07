
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {int dev; } ;


 int GSWIP_BM_RAM_ADDR ;
 int GSWIP_BM_RAM_CTRL ;
 int GSWIP_BM_RAM_CTRL_ADDR_MASK ;
 int GSWIP_BM_RAM_CTRL_BAS ;
 int GSWIP_BM_RAM_CTRL_OPMOD ;
 int GSWIP_BM_RAM_VAL (int) ;
 int dev_err (int ,char*,int,int) ;
 int gswip_switch_mask (struct gswip_priv*,int,int,int ) ;
 int gswip_switch_r (struct gswip_priv*,int ) ;
 int gswip_switch_r_timeout (struct gswip_priv*,int ,int) ;
 int gswip_switch_w (struct gswip_priv*,int,int ) ;

__attribute__((used)) static u32 gswip_bcm_ram_entry_read(struct gswip_priv *priv, u32 table,
        u32 index)
{
 u32 result;
 int err;

 gswip_switch_w(priv, index, GSWIP_BM_RAM_ADDR);
 gswip_switch_mask(priv, GSWIP_BM_RAM_CTRL_ADDR_MASK |
    GSWIP_BM_RAM_CTRL_OPMOD,
         table | GSWIP_BM_RAM_CTRL_BAS,
         GSWIP_BM_RAM_CTRL);

 err = gswip_switch_r_timeout(priv, GSWIP_BM_RAM_CTRL,
         GSWIP_BM_RAM_CTRL_BAS);
 if (err) {
  dev_err(priv->dev, "timeout while reading table: %u, index: %u",
   table, index);
  return 0;
 }

 result = gswip_switch_r(priv, GSWIP_BM_RAM_VAL(0));
 result |= gswip_switch_r(priv, GSWIP_BM_RAM_VAL(1)) << 16;

 return result;
}
