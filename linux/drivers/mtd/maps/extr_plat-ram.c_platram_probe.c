
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_7__ {char* name; int size; int virt; int bankwidth; scalar_t__ phys; } ;
struct platram_info {TYPE_3__* mtd; TYPE_2__ map; struct platdata_mtd_ram* pdata; int * dev; } ;
struct platform_device {int dev; scalar_t__ name; } ;
struct platdata_mtd_ram {char** map_probes; scalar_t__ nr_partitions; int partitions; int probes; int bankwidth; int * mapname; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PLATRAM_RW ;
 int PTR_ERR (int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 struct platdata_mtd_ram* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 void* do_map_probe (char const* const,TYPE_2__*) ;
 struct platram_info* kzalloc (int,int ) ;
 int mtd_device_parse_register (TYPE_3__*,int ,int *,int ,scalar_t__) ;
 int mtd_device_register (TYPE_3__*,int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct platram_info*) ;
 int platram_remove (struct platform_device*) ;
 int platram_setrw (struct platram_info*,int ) ;
 int resource_size (struct resource*) ;
 int simple_map_init (TYPE_2__*) ;

__attribute__((used)) static int platram_probe(struct platform_device *pdev)
{
 struct platdata_mtd_ram *pdata;
 struct platram_info *info;
 struct resource *res;
 int err = 0;

 dev_dbg(&pdev->dev, "probe entered\n");

 if (dev_get_platdata(&pdev->dev) == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data supplied\n");
  err = -ENOENT;
  goto exit_error;
 }

 pdata = dev_get_platdata(&pdev->dev);

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) {
  err = -ENOMEM;
  goto exit_error;
 }

 platform_set_drvdata(pdev, info);

 info->dev = &pdev->dev;
 info->pdata = pdata;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 info->map.virt = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(info->map.virt)) {
  err = PTR_ERR(info->map.virt);
  dev_err(&pdev->dev, "failed to ioremap() region\n");
  goto exit_free;
 }

 dev_dbg(&pdev->dev, "got platform resource %p (0x%llx)\n", res,
  (unsigned long long)res->start);



 info->map.phys = res->start;
 info->map.size = resource_size(res);
 info->map.name = pdata->mapname != ((void*)0) ?
   (char *)pdata->mapname : (char *)pdev->name;
 info->map.bankwidth = pdata->bankwidth;

 dev_dbg(&pdev->dev, "virt %p, %lu bytes\n", info->map.virt, info->map.size);

 simple_map_init(&info->map);

 dev_dbg(&pdev->dev, "initialised map, probing for mtd\n");




 if (pdata->map_probes) {
  const char * const *map_probes = pdata->map_probes;

  for ( ; !info->mtd && *map_probes; map_probes++)
   info->mtd = do_map_probe(*map_probes , &info->map);
 }

 else
  info->mtd = do_map_probe("map_ram", &info->map);

 if (info->mtd == ((void*)0)) {
  dev_err(&pdev->dev, "failed to probe for map_ram\n");
  err = -ENOMEM;
  goto exit_free;
 }

 info->mtd->dev.parent = &pdev->dev;

 platram_setrw(info, PLATRAM_RW);




 err = mtd_device_parse_register(info->mtd, pdata->probes, ((void*)0),
     pdata->partitions,
     pdata->nr_partitions);
 if (!err)
  dev_info(&pdev->dev, "registered mtd device\n");

 if (pdata->nr_partitions) {

  err = mtd_device_register(info->mtd, ((void*)0), 0);
  if (err) {
   dev_err(&pdev->dev,
    "failed to register the entire device\n");
  }
 }

 return err;

 exit_free:
 platram_remove(pdev);
 exit_error:
 return err;
}
