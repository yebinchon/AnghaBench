
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_en_priv {int validate_loopback; TYPE_1__* dev; scalar_t__ loopback_ok; } ;
struct TYPE_2__ {int features; } ;


 int MLX4_EN_LOOPBACK_RETRIES ;
 int MLX4_EN_LOOPBACK_TIMEOUT ;
 int en_err (struct mlx4_en_priv*,char*) ;
 scalar_t__ mlx4_en_test_loopback_xmit (struct mlx4_en_priv*) ;
 int mlx4_en_update_loopback_state (TYPE_1__*,int ) ;
 int msleep (int ) ;

__attribute__((used)) static int mlx4_en_test_loopback(struct mlx4_en_priv *priv)
{
 u32 loopback_ok = 0;
 int i;

        priv->loopback_ok = 0;
 priv->validate_loopback = 1;

 mlx4_en_update_loopback_state(priv->dev, priv->dev->features);


 if (mlx4_en_test_loopback_xmit(priv)) {
  en_err(priv, "Transmitting loopback packet failed\n");
  goto mlx4_en_test_loopback_exit;
 }


 for (i = 0; i < MLX4_EN_LOOPBACK_RETRIES; ++i) {
  msleep(MLX4_EN_LOOPBACK_TIMEOUT);
  if (priv->loopback_ok) {
   loopback_ok = 1;
   break;
  }
 }
 if (!loopback_ok)
  en_err(priv, "Loopback packet didn't arrive\n");

mlx4_en_test_loopback_exit:

 priv->validate_loopback = 0;

 mlx4_en_update_loopback_state(priv->dev, priv->dev->features);
 return !loopback_ok;
}
