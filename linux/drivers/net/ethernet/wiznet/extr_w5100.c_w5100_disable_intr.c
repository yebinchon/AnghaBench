
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int dummy; } ;


 int w5100_socket_intr_mask (struct w5100_priv*,int ) ;

__attribute__((used)) static void w5100_disable_intr(struct w5100_priv *priv)
{
 w5100_socket_intr_mask(priv, 0);
}
