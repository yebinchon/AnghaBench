
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;} ;


 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 struct tmio_mmc_host* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int tmio_mmc_host_remove (struct tmio_mmc_host*) ;

__attribute__((used)) static int tmio_mmc_remove(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct tmio_mmc_host *host = platform_get_drvdata(pdev);

 tmio_mmc_host_remove(host);
 if (cell->disable)
  cell->disable(pdev);

 return 0;
}
