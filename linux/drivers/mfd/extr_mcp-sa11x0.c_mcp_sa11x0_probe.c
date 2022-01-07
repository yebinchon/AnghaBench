
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mcp_sa11x0 {int mccr0; int mccr1; void* base0; void* base1; } ;
struct mcp_plat_data {int sclk_rate; int mccr0; int mccr1; int codec_pdata; } ;
struct mcp {int sclk_rate; int rw_timeout; int * ops; int owner; } ;


 int DRIVER_NAME ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int MCCR0 (struct mcp_sa11x0*) ;
 int MCCR1 (struct mcp_sa11x0*) ;
 int MCSR (struct mcp_sa11x0*) ;
 int THIS_MODULE ;
 struct mcp_plat_data* dev_get_platdata (int *) ;
 void* ioremap (int ,int ) ;
 int iounmap (void*) ;
 int mcp_host_add (struct mcp*,int ) ;
 struct mcp* mcp_host_alloc (int *,int) ;
 int mcp_host_free (struct mcp*) ;
 int mcp_sa11x0 ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct mcp*) ;
 struct mcp_sa11x0* priv (struct mcp*) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int mcp_sa11x0_probe(struct platform_device *dev)
{
 struct mcp_plat_data *data = dev_get_platdata(&dev->dev);
 struct resource *mem0, *mem1;
 struct mcp_sa11x0 *m;
 struct mcp *mcp;
 int ret;

 if (!data)
  return -ENODEV;

 mem0 = platform_get_resource(dev, IORESOURCE_MEM, 0);
 mem1 = platform_get_resource(dev, IORESOURCE_MEM, 1);
 if (!mem0 || !mem1)
  return -ENXIO;

 if (!request_mem_region(mem0->start, resource_size(mem0),
    DRIVER_NAME)) {
  ret = -EBUSY;
  goto err_mem0;
 }

 if (!request_mem_region(mem1->start, resource_size(mem1),
    DRIVER_NAME)) {
  ret = -EBUSY;
  goto err_mem1;
 }

 mcp = mcp_host_alloc(&dev->dev, sizeof(struct mcp_sa11x0));
 if (!mcp) {
  ret = -ENOMEM;
  goto err_alloc;
 }

 mcp->owner = THIS_MODULE;
 mcp->ops = &mcp_sa11x0;
 mcp->sclk_rate = data->sclk_rate;

 m = priv(mcp);
 m->mccr0 = data->mccr0 | 0x7f7f;
 m->mccr1 = data->mccr1;

 m->base0 = ioremap(mem0->start, resource_size(mem0));
 m->base1 = ioremap(mem1->start, resource_size(mem1));
 if (!m->base0 || !m->base1) {
  ret = -ENOMEM;
  goto err_ioremap;
 }

 platform_set_drvdata(dev, mcp);





 writel_relaxed(-1, MCSR(m));
 writel_relaxed(m->mccr1, MCCR1(m));
 writel_relaxed(m->mccr0, MCCR0(m));






 mcp->rw_timeout = (64 * 3 * 1000000 + mcp->sclk_rate - 1) /
     mcp->sclk_rate;

 ret = mcp_host_add(mcp, data->codec_pdata);
 if (ret == 0)
  return 0;

 err_ioremap:
 iounmap(m->base1);
 iounmap(m->base0);
 mcp_host_free(mcp);
 err_alloc:
 release_mem_region(mem1->start, resource_size(mem1));
 err_mem1:
 release_mem_region(mem0->start, resource_size(mem0));
 err_mem0:
 return ret;
}
