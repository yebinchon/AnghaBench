
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int rstc; int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void rcsi2_exit_standby(struct rcar_csi2 *priv)
{
 pm_runtime_get_sync(priv->dev);
 reset_control_deassert(priv->rstc);
}
