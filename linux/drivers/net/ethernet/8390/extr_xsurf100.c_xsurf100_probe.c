
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct zorro_device_id {int dummy; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct zorro_dev {char* name; TYPE_2__ resource; int dev; int slotaddr; } ;
struct TYPE_3__ {int wordlength; int dcr_val; int rcr_val; int* reg_offsets; int block_input; int block_output; int check_irq; int flags; } ;
struct xsurf100_ax_plat_data {void* base_regs; void* data_area; TYPE_1__ ax; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int ax88796_data ;


 int AXFLG_HAS_EEPROM ;
 struct resource DEFINE_RES_MEM (scalar_t__,int) ;
 struct resource DEFINE_RES_NAMED (int ,int,int *,int) ;
 int ENXIO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_IRQ_SHAREABLE ;
 int IRQ_AMIGA_PORTS ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 scalar_t__ XS100_8390_BASE ;
 scalar_t__ XS100_8390_DATA32_BASE ;
 int XS100_8390_DATA32_SIZE ;
 int dev_err (int *,char*,...) ;
 void* ioremap (scalar_t__,int) ;
 int iounmap (void*) ;
 int is_xsurf100_network_irq ;
 int memset (struct xsurf100_ax_plat_data*,int ,int) ;
 struct platform_device* platform_device_register_resndata (int *,char*,int ,struct resource*,int,struct xsurf100_ax_plat_data*,int) ;
 int release_mem_region (scalar_t__,int) ;
 int request_mem_region (scalar_t__,int,char*) ;
 int xs100_block_input ;
 int xs100_block_output ;
 int zorro_set_drvdata (struct zorro_dev*,struct platform_device*) ;

__attribute__((used)) static int xsurf100_probe(struct zorro_dev *zdev,
     const struct zorro_device_id *ent)
{
 struct platform_device *pdev;
 struct xsurf100_ax_plat_data ax88796_data;
 struct resource res[2] = {
  DEFINE_RES_NAMED(IRQ_AMIGA_PORTS, 1, ((void*)0),
     IORESOURCE_IRQ | IORESOURCE_IRQ_SHAREABLE),
  DEFINE_RES_MEM(zdev->resource.start + XS100_8390_BASE,
          4 * 0x20)
 };
 int reg;



 static u32 reg_offsets[32];
 int ret = 0;






 if (!request_mem_region(zdev->resource.start, 0x100, zdev->name)) {
  dev_err(&zdev->dev, "cannot reserve X-Surf 100 control registers\n");
  return -ENXIO;
 }

 if (!request_mem_region(zdev->resource.start +
    XS100_8390_DATA32_BASE,
    XS100_8390_DATA32_SIZE,
    "X-Surf 100 32-bit data access")) {
  dev_err(&zdev->dev, "cannot reserve 32-bit area\n");
  ret = -ENXIO;
  goto exit_req;
 }

 for (reg = 0; reg < 0x20; reg++)
  reg_offsets[reg] = 4 * reg;

 memset(&ax88796_data, 0, sizeof(ax88796_data));
 ax88796_data.ax.flags = AXFLG_HAS_EEPROM;
 ax88796_data.ax.wordlength = 2;
 ax88796_data.ax.dcr_val = 0x48;
 ax88796_data.ax.rcr_val = 0x40;
 ax88796_data.ax.reg_offsets = reg_offsets;
 ax88796_data.ax.check_irq = is_xsurf100_network_irq;
 ax88796_data.base_regs = ioremap(zdev->resource.start, 0x100);


 if (!ax88796_data.base_regs) {
  dev_err(&zdev->dev, "Cannot ioremap area %pR (registers)\n",
   &zdev->resource);

  ret = -ENXIO;
  goto exit_req2;
 }

 ax88796_data.data_area = ioremap(zdev->resource.start +
   XS100_8390_DATA32_BASE, XS100_8390_DATA32_SIZE);


 if (!ax88796_data.data_area) {
  dev_err(&zdev->dev,
   "Cannot ioremap area %pR offset %x (32-bit access)\n",
   &zdev->resource, XS100_8390_DATA32_BASE);

  ret = -ENXIO;
  goto exit_mem;
 }

 ax88796_data.ax.block_output = xs100_block_output;
 ax88796_data.ax.block_input = xs100_block_input;

 pdev = platform_device_register_resndata(&zdev->dev, "ax88796",
       zdev->slotaddr, res, 2,
       &ax88796_data,
       sizeof(ax88796_data));

 if (IS_ERR(pdev)) {
  dev_err(&zdev->dev, "cannot register platform device\n");
  ret = -ENXIO;
  goto exit_mem2;
 }

 zorro_set_drvdata(zdev, pdev);

 if (!ret)
  return 0;

 exit_mem2:
 iounmap(ax88796_data.data_area);

 exit_mem:
 iounmap(ax88796_data.base_regs);

 exit_req2:
 release_mem_region(zdev->resource.start + XS100_8390_DATA32_BASE,
      XS100_8390_DATA32_SIZE);

 exit_req:
 release_mem_region(zdev->resource.start, 0x100);

 return ret;
}
