
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {int loopback_ok; } ;


 int ETH_HLEN ;
 int MLX4_LOOPBACK_TEST_PAYLOAD ;

__attribute__((used)) static void validate_loopback(struct mlx4_en_priv *priv, void *va)
{
 const unsigned char *data = va + ETH_HLEN;
 int i;

 for (i = 0; i < MLX4_LOOPBACK_TEST_PAYLOAD; i++) {
  if (data[i] != (unsigned char)i)
   return;
 }

 priv->loopback_ok = 1;
}
