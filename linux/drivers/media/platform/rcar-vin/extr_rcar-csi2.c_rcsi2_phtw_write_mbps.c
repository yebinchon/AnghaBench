
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rcsi2_mbps_reg {int mbps; int reg; } ;
struct rcar_csi2 {int dev; } ;


 int ERANGE ;
 int dev_err (int ,char*,unsigned int) ;
 int rcsi2_phtw_write (struct rcar_csi2*,int ,int ) ;

__attribute__((used)) static int rcsi2_phtw_write_mbps(struct rcar_csi2 *priv, unsigned int mbps,
     const struct rcsi2_mbps_reg *values, u16 code)
{
 const struct rcsi2_mbps_reg *value;

 for (value = values; value->mbps; value++)
  if (value->mbps >= mbps)
   break;

 if (!value->mbps) {
  dev_err(priv->dev, "Unsupported PHY speed (%u Mbps)", mbps);
  return -ERANGE;
 }

 return rcsi2_phtw_write(priv, value->reg, code);
}
