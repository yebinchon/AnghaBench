
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct TYPE_2__ {int mask; } ;
struct spi_nor_erase_map {int * erase_type; } ;
struct spi_nor_flash_parameter {int size; int * page_programs; TYPE_1__ hwcaps; int * reads; int page_size; int setup; int set_4byte; int quad_enable; struct spi_nor_erase_map erase_map; } ;
struct spi_nor {struct flash_info* info; struct spi_nor_flash_parameter params; } ;
struct flash_info {unsigned int sector_size; int n_sectors; int flags; int page_size; } ;
struct device_node {int dummy; } ;


 size_t BIT (size_t) ;
 int SECT_4K ;
 int SECT_4K_PMC ;
 size_t SNOR_CMD_PP ;
 size_t SNOR_CMD_READ ;
 size_t SNOR_CMD_READ_1_1_2 ;
 size_t SNOR_CMD_READ_1_1_4 ;
 size_t SNOR_CMD_READ_1_1_8 ;
 size_t SNOR_CMD_READ_FAST ;
 int SNOR_HWCAPS_PP ;
 int SNOR_HWCAPS_READ ;
 int SNOR_HWCAPS_READ_1_1_2 ;
 int SNOR_HWCAPS_READ_1_1_4 ;
 int SNOR_HWCAPS_READ_1_1_8 ;
 int SNOR_HWCAPS_READ_FAST ;
 int SNOR_PROTO_1_1_1 ;
 int SNOR_PROTO_1_1_2 ;
 int SNOR_PROTO_1_1_4 ;
 int SNOR_PROTO_1_1_8 ;
 int SPINOR_OP_BE_4K ;
 int SPINOR_OP_BE_4K_PMC ;
 int SPINOR_OP_PP ;
 int SPINOR_OP_READ ;
 int SPINOR_OP_READ_1_1_2 ;
 int SPINOR_OP_READ_1_1_4 ;
 int SPINOR_OP_READ_1_1_8 ;
 int SPINOR_OP_READ_FAST ;
 int SPINOR_OP_SE ;
 int SPI_NOR_DUAL_READ ;
 int SPI_NOR_NO_FR ;
 int SPI_NOR_OCTAL_READ ;
 int SPI_NOR_QUAD_READ ;
 int of_property_read_bool (struct device_node*,char*) ;
 int spansion_quad_enable ;
 int spansion_set_4byte ;
 int spi_nor_default_setup ;
 struct device_node* spi_nor_get_flash_node (struct spi_nor*) ;
 int spi_nor_init_uniform_erase_map (struct spi_nor_erase_map*,size_t,int) ;
 int spi_nor_set_erase_type (int *,unsigned int,int ) ;
 int spi_nor_set_pp_settings (int *,int ,int ) ;
 int spi_nor_set_read_settings (int *,int ,int,int ,int ) ;

__attribute__((used)) static void spi_nor_info_init_params(struct spi_nor *nor)
{
 struct spi_nor_flash_parameter *params = &nor->params;
 struct spi_nor_erase_map *map = &params->erase_map;
 const struct flash_info *info = nor->info;
 struct device_node *np = spi_nor_get_flash_node(nor);
 u8 i, erase_mask;


 params->quad_enable = spansion_quad_enable;
 params->set_4byte = spansion_set_4byte;
 params->setup = spi_nor_default_setup;


 params->size = (u64)info->sector_size * info->n_sectors;
 params->page_size = info->page_size;

 if (!(info->flags & SPI_NOR_NO_FR)) {

  params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;


  if (np && !of_property_read_bool(np, "m25p,fast-read"))
   params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
 }


 params->hwcaps.mask |= SNOR_HWCAPS_READ;
 spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ],
      0, 0, SPINOR_OP_READ,
      SNOR_PROTO_1_1_1);

 if (params->hwcaps.mask & SNOR_HWCAPS_READ_FAST)
  spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_FAST],
       0, 8, SPINOR_OP_READ_FAST,
       SNOR_PROTO_1_1_1);

 if (info->flags & SPI_NOR_DUAL_READ) {
  params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
  spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_2],
       0, 8, SPINOR_OP_READ_1_1_2,
       SNOR_PROTO_1_1_2);
 }

 if (info->flags & SPI_NOR_QUAD_READ) {
  params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
  spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_4],
       0, 8, SPINOR_OP_READ_1_1_4,
       SNOR_PROTO_1_1_4);
 }

 if (info->flags & SPI_NOR_OCTAL_READ) {
  params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_8;
  spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_8],
       0, 8, SPINOR_OP_READ_1_1_8,
       SNOR_PROTO_1_1_8);
 }


 params->hwcaps.mask |= SNOR_HWCAPS_PP;
 spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
    SPINOR_OP_PP, SNOR_PROTO_1_1_1);





 erase_mask = 0;
 i = 0;
 if (info->flags & SECT_4K_PMC) {
  erase_mask |= BIT(i);
  spi_nor_set_erase_type(&map->erase_type[i], 4096u,
           SPINOR_OP_BE_4K_PMC);
  i++;
 } else if (info->flags & SECT_4K) {
  erase_mask |= BIT(i);
  spi_nor_set_erase_type(&map->erase_type[i], 4096u,
           SPINOR_OP_BE_4K);
  i++;
 }
 erase_mask |= BIT(i);
 spi_nor_set_erase_type(&map->erase_type[i], info->sector_size,
          SPINOR_OP_SE);
 spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
}
