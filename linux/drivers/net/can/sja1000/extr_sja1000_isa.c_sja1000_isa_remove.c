
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ read_reg; int reg_base; } ;
struct platform_device {int id; } ;
struct net_device {int dummy; } ;


 int SJA1000_IOSIZE ;
 int SJA1000_IOSIZE_INDIRECT ;
 int free_sja1000dev (struct net_device*) ;
 int iounmap (int ) ;
 scalar_t__* mem ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int * port ;
 int release_mem_region (scalar_t__,int ) ;
 int release_region (int ,int ) ;
 scalar_t__ sja1000_isa_port_read_reg_indirect ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static int sja1000_isa_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct sja1000_priv *priv = netdev_priv(dev);
 int idx = pdev->id;

 unregister_sja1000dev(dev);

 if (mem[idx]) {
  iounmap(priv->reg_base);
  release_mem_region(mem[idx], SJA1000_IOSIZE);
 } else {
  if (priv->read_reg == sja1000_isa_port_read_reg_indirect)
   release_region(port[idx], SJA1000_IOSIZE_INDIRECT);
  else
   release_region(port[idx], SJA1000_IOSIZE);
 }
 free_sja1000dev(dev);

 return 0;
}
