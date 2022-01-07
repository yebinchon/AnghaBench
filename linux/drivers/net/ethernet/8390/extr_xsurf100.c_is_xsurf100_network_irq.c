
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsurf100_ax_plat_data {scalar_t__ base_regs; } ;
struct platform_device {int dev; } ;


 scalar_t__ XS100_IRQSTATUS_BASE ;
 struct xsurf100_ax_plat_data* dev_get_platdata (int *) ;
 int readw (scalar_t__) ;

__attribute__((used)) static int is_xsurf100_network_irq(struct platform_device *pdev)
{
 struct xsurf100_ax_plat_data *xs100 = dev_get_platdata(&pdev->dev);

 return (readw(xs100->base_regs + XS100_IRQSTATUS_BASE) & 0xaaaa) != 0;
}
