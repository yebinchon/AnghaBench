
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int clk_cd; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void renesas_sdhi_clk_disable(struct tmio_mmc_host *host)
{
 struct renesas_sdhi *priv = host_to_priv(host);

 clk_disable_unprepare(priv->clk);
 clk_disable_unprepare(priv->clk_cd);
}
