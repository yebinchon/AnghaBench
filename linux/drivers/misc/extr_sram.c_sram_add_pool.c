
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_reserve {int size; int label; } ;
struct sram_partition {scalar_t__ base; int pool; } ;
struct sram_dev {int dev; } ;
typedef int phys_addr_t ;


 scalar_t__ IS_ERR (int ) ;
 int NUMA_NO_NODE ;
 int PTR_ERR (int ) ;
 int SRAM_GRANULARITY ;
 int dev_err (int ,char*,int) ;
 int devm_gen_pool_create (int ,int ,int ,int ) ;
 int gen_pool_add_virt (int ,unsigned long,int ,int ,int ) ;
 int ilog2 (int ) ;

__attribute__((used)) static int sram_add_pool(struct sram_dev *sram, struct sram_reserve *block,
    phys_addr_t start, struct sram_partition *part)
{
 int ret;

 part->pool = devm_gen_pool_create(sram->dev, ilog2(SRAM_GRANULARITY),
       NUMA_NO_NODE, block->label);
 if (IS_ERR(part->pool))
  return PTR_ERR(part->pool);

 ret = gen_pool_add_virt(part->pool, (unsigned long)part->base, start,
    block->size, NUMA_NO_NODE);
 if (ret < 0) {
  dev_err(sram->dev, "failed to register subpool: %d\n", ret);
  return ret;
 }

 return 0;
}
