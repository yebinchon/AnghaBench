
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl353_smc_data {int aclk; int memclk; } ;
struct amba_device {int dummy; } ;


 struct pl353_smc_data* amba_get_drvdata (struct amba_device*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int pl353_smc_remove(struct amba_device *adev)
{
 struct pl353_smc_data *pl353_smc = amba_get_drvdata(adev);

 clk_disable_unprepare(pl353_smc->memclk);
 clk_disable_unprepare(pl353_smc->aclk);

 return 0;
}
