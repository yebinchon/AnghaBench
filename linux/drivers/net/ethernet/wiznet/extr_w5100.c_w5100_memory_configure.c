
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int dummy; } ;


 int W5100_RMSR ;
 int W5100_TMSR ;
 int w5100_write (struct w5100_priv*,int ,int) ;

__attribute__((used)) static void w5100_memory_configure(struct w5100_priv *priv)
{



 w5100_write(priv, W5100_RMSR, 0x03);
 w5100_write(priv, W5100_TMSR, 0x03);
}
