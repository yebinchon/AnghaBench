
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int dev; int rstc; } ;


 int PHTC_REG ;
 int PHTC_TESTCLR ;
 int PHYCNT_REG ;
 int pm_runtime_put (int ) ;
 int rcsi2_write (struct rcar_csi2*,int ,int ) ;
 int reset_control_assert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rcsi2_enter_standby(struct rcar_csi2 *priv)
{
 rcsi2_write(priv, PHYCNT_REG, 0);
 rcsi2_write(priv, PHTC_REG, PHTC_TESTCLR);
 reset_control_assert(priv->rstc);
 usleep_range(100, 150);
 pm_runtime_put(priv->dev);
}
