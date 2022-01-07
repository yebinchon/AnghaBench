
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mcp_sa11x0 {int mccr0; int base0; int base1; } ;
struct mcp {int dummy; } ;


 int IORESOURCE_MEM ;
 int MCCR0_MCE ;
 int dev_warn (int *,char*) ;
 int iounmap (int ) ;
 int mcp_host_del (struct mcp*) ;
 int mcp_host_free (struct mcp*) ;
 struct mcp* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 struct mcp_sa11x0* priv (struct mcp*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mcp_sa11x0_remove(struct platform_device *dev)
{
 struct mcp *mcp = platform_get_drvdata(dev);
 struct mcp_sa11x0 *m = priv(mcp);
 struct resource *mem0, *mem1;

 if (m->mccr0 & MCCR0_MCE)
  dev_warn(&dev->dev,
    "device left active (missing disable call?)\n");

 mem0 = platform_get_resource(dev, IORESOURCE_MEM, 0);
 mem1 = platform_get_resource(dev, IORESOURCE_MEM, 1);

 mcp_host_del(mcp);
 iounmap(m->base1);
 iounmap(m->base0);
 mcp_host_free(mcp);
 release_mem_region(mem1->start, resource_size(mem1));
 release_mem_region(mem0->start, resource_size(mem0));

 return 0;
}
