
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct emac_board_info {int membase; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int dev_dbg (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int sunxi_sram_release (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int emac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct emac_board_info *db = netdev_priv(ndev);

 unregister_netdev(ndev);
 sunxi_sram_release(&pdev->dev);
 clk_disable_unprepare(db->clk);
 iounmap(db->membase);
 free_netdev(ndev);

 dev_dbg(&pdev->dev, "released and freed device\n");
 return 0;
}
