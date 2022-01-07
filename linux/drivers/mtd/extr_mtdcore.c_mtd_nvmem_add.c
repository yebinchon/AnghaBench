
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_config {int id; int word_size; int stride; int read_only; int root_only; int no_of_node; struct mtd_info* priv; int size; int reg_read; int owner; int name; int * dev; } ;
struct mtd_info {int * nvmem; int dev; int size; int name; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int mtd_nvmem_reg_read ;
 int * nvmem_register (struct nvmem_config*) ;

__attribute__((used)) static int mtd_nvmem_add(struct mtd_info *mtd)
{
 struct nvmem_config config = {};

 config.id = -1;
 config.dev = &mtd->dev;
 config.name = mtd->name;
 config.owner = THIS_MODULE;
 config.reg_read = mtd_nvmem_reg_read;
 config.size = mtd->size;
 config.word_size = 1;
 config.stride = 1;
 config.read_only = 1;
 config.root_only = 1;
 config.no_of_node = 1;
 config.priv = mtd;

 mtd->nvmem = nvmem_register(&config);
 if (IS_ERR(mtd->nvmem)) {

  if (PTR_ERR(mtd->nvmem) == -EOPNOTSUPP) {
   mtd->nvmem = ((void*)0);
  } else {
   dev_err(&mtd->dev, "Failed to register NVMEM device\n");
   return PTR_ERR(mtd->nvmem);
  }
 }

 return 0;
}
