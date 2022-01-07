
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pismo_mem {int type; scalar_t__ width; int size; int access; int base; } ;
struct pismo_data {TYPE_1__* client; } ;
struct pismo_cs_block {int type; int device; int width; int size; int access; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int dev_err (struct device*,char*,int,int ) ;
 int dev_info (struct device*,char*,int,int ,int,int ,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int pismo_add_nor (struct pismo_data*,int,struct pismo_mem*) ;
 int pismo_add_sram (struct pismo_data*,int,struct pismo_mem*) ;
 scalar_t__ pismo_width_to_bytes (int ) ;

__attribute__((used)) static void pismo_add_one(struct pismo_data *pismo, int i,
     const struct pismo_cs_block *cs, phys_addr_t base)
{
 struct device *dev = &pismo->client->dev;
 struct pismo_mem region;

 region.base = base;
 region.type = cs->type;
 region.width = pismo_width_to_bytes(cs->width);
 region.access = le16_to_cpu(cs->access);
 region.size = le32_to_cpu(cs->size);

 if (region.width == 0) {
  dev_err(dev, "cs%u: bad width: %02x, ignoring\n", i, cs->width);
  return;
 }







 dev_info(dev, "cs%u: %.32s: type %02x access %u00ps size %uK\n",
  i, cs->device, region.type, region.access, region.size / 1024);

 switch (region.type) {
 case 0:
  break;
 case 1:

  break;
 case 2:

  pismo_add_nor(pismo, i, &region);
  break;
 case 3:

  pismo_add_sram(pismo, i, &region);
  break;
 }
}
