
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcsi2_mbps_reg {unsigned int mbps; int reg; } ;
struct rcar_csi2 {int dev; TYPE_1__* info; } ;
struct TYPE_2__ {struct rcsi2_mbps_reg* hsfreqrange; } ;


 int ERANGE ;
 int PHYPLL_HSFREQRANGE (int ) ;
 int PHYPLL_REG ;
 int dev_err (int ,char*,unsigned int) ;
 int rcsi2_write (struct rcar_csi2*,int ,int ) ;

__attribute__((used)) static int rcsi2_set_phypll(struct rcar_csi2 *priv, unsigned int mbps)
{
 const struct rcsi2_mbps_reg *hsfreq;

 for (hsfreq = priv->info->hsfreqrange; hsfreq->mbps != 0; hsfreq++)
  if (hsfreq->mbps >= mbps)
   break;

 if (!hsfreq->mbps) {
  dev_err(priv->dev, "Unsupported PHY speed (%u Mbps)", mbps);
  return -ERANGE;
 }

 rcsi2_write(priv, PHYPLL_REG, PHYPLL_HSFREQRANGE(hsfreq->reg));

 return 0;
}
