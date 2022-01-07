
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl172_data {int clk; } ;
struct amba_device {int dummy; } ;


 struct pl172_data* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int pl172_remove(struct amba_device *adev)
{
 struct pl172_data *pl172 = amba_get_drvdata(adev);

 clk_disable_unprepare(pl172->clk);
 amba_release_regions(adev);

 return 0;
}
