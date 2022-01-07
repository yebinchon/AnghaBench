
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_erase_type {int size; int opcode; } ;
struct spi_nor_erase_region {int offset; int size; } ;
struct spi_nor_erase_command {int count; int size; int opcode; int list; } ;


 int ENOMEM ;
 struct spi_nor_erase_command* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNOR_OVERLAID_REGION ;
 struct spi_nor_erase_command* kmalloc (int,int ) ;

__attribute__((used)) static struct spi_nor_erase_command *
spi_nor_init_erase_cmd(const struct spi_nor_erase_region *region,
         const struct spi_nor_erase_type *erase)
{
 struct spi_nor_erase_command *cmd;

 cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&cmd->list);
 cmd->opcode = erase->opcode;
 cmd->count = 1;

 if (region->offset & SNOR_OVERLAID_REGION)
  cmd->size = region->size;
 else
  cmd->size = erase->size;

 return cmd;
}
