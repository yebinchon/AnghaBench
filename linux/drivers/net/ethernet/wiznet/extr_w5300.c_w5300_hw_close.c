
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int dummy; } ;


 int S0_CR_CLOSE ;
 int W5300_IMR ;
 int w5300_command (struct w5300_priv*,int ) ;
 int w5300_write (struct w5300_priv*,int ,int ) ;

__attribute__((used)) static void w5300_hw_close(struct w5300_priv *priv)
{
 w5300_write(priv, W5300_IMR, 0);
 w5300_command(priv, S0_CR_CLOSE);
}
