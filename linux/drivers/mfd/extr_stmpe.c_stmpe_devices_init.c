
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmpe_variant_info {int num_blocks; struct stmpe_variant_block* blocks; } ;
struct stmpe_variant_block {unsigned int block; TYPE_2__* cell; scalar_t__ irq; } ;
struct stmpe {int dev; TYPE_1__* pdata; struct stmpe_variant_info* variant; } ;
struct resource {int flags; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {int num_resources; int * resources; } ;
struct TYPE_3__ {unsigned int blocks; } ;


 int EINVAL ;
 int IORESOURCE_IRQ ;
 int dev_warn (int ,char*,unsigned int) ;
 int stmpe_add_device (struct stmpe*,TYPE_2__*) ;

__attribute__((used)) static int stmpe_devices_init(struct stmpe *stmpe)
{
 struct stmpe_variant_info *variant = stmpe->variant;
 unsigned int platform_blocks = stmpe->pdata->blocks;
 int ret = -EINVAL;
 int i, j;

 for (i = 0; i < variant->num_blocks; i++) {
  struct stmpe_variant_block *block = &variant->blocks[i];

  if (!(platform_blocks & block->block))
   continue;

  for (j = 0; j < block->cell->num_resources; j++) {
   struct resource *res =
    (struct resource *) &block->cell->resources[j];


   if (res->flags & IORESOURCE_IRQ)
    res->start = res->end = block->irq + j;
  }

  platform_blocks &= ~block->block;
  ret = stmpe_add_device(stmpe, block->cell);
  if (ret)
   return ret;
 }

 if (platform_blocks)
  dev_warn(stmpe->dev,
    "platform wants blocks (%#x) not present on variant",
    platform_blocks);

 return ret;
}
