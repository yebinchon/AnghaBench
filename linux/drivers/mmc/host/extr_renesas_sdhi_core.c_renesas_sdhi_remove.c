
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct platform_device {int dummy; } ;


 struct tmio_mmc_host* platform_get_drvdata (struct platform_device*) ;
 int renesas_sdhi_clk_disable (struct tmio_mmc_host*) ;
 int tmio_mmc_host_remove (struct tmio_mmc_host*) ;

int renesas_sdhi_remove(struct platform_device *pdev)
{
 struct tmio_mmc_host *host = platform_get_drvdata(pdev);

 tmio_mmc_host_remove(host);
 renesas_sdhi_clk_disable(host);

 return 0;
}
