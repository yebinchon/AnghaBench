
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int dummy; } ;


 int S0_CR_CLOSE ;
 int w5100_command (struct w5100_priv*,int ) ;
 int w5100_disable_intr (struct w5100_priv*) ;

__attribute__((used)) static void w5100_hw_close(struct w5100_priv *priv)
{
 w5100_disable_intr(priv);
 w5100_command(priv, S0_CR_CLOSE);
}
