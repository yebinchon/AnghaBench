
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sxgbe_priv_data {int sxgbe_clk; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static u32 sxgbe_usec2riwt(u32 usec, struct sxgbe_priv_data *priv)
{
 unsigned long clk = clk_get_rate(priv->sxgbe_clk);

 if (!clk)
  return 0;

 return (usec * (clk / 1000000)) / 256;
}
