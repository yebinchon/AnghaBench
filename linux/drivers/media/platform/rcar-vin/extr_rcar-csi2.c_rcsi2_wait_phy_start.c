
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_csi2 {int lanes; int dev; } ;


 int ETIMEDOUT ;
 int PHCLM_REG ;
 int const PHCLM_STOPSTATECKL ;
 int PHDLM_REG ;
 int dev_err (int ,char*) ;
 int const rcsi2_read (struct rcar_csi2*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rcsi2_wait_phy_start(struct rcar_csi2 *priv)
{
 unsigned int timeout;


 for (timeout = 0; timeout <= 20; timeout++) {
  const u32 lane_mask = (1 << priv->lanes) - 1;

  if ((rcsi2_read(priv, PHCLM_REG) & PHCLM_STOPSTATECKL) &&
      (rcsi2_read(priv, PHDLM_REG) & lane_mask) == lane_mask)
   return 0;

  usleep_range(1000, 2000);
 }

 dev_err(priv->dev, "Timeout waiting for LP-11 state\n");

 return -ETIMEDOUT;
}
