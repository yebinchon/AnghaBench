
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iproc_mdiomux_desc {int core_clk; int mii_bus; int mux_handle; } ;


 int clk_disable_unprepare (int ) ;
 int mdio_mux_uninit (int ) ;
 int mdiobus_unregister (int ) ;
 struct iproc_mdiomux_desc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mdio_mux_iproc_remove(struct platform_device *pdev)
{
 struct iproc_mdiomux_desc *md = platform_get_drvdata(pdev);

 mdio_mux_uninit(md->mux_handle);
 mdiobus_unregister(md->mii_bus);
 clk_disable_unprepare(md->core_clk);

 return 0;
}
