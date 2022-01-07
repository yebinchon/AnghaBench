
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_nor_flash_parameter {int erase_map; } ;
struct spi_nor {int dummy; } ;
struct sfdp_parameter_header {int length; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 int SFDP_PARAM_HEADER_PTP (struct sfdp_parameter_header const*) ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int le32_to_cpu (int ) ;
 int * spi_nor_get_map_in_use (struct spi_nor*,int *,int) ;
 int spi_nor_init_non_uniform_erase_map (struct spi_nor*,struct spi_nor_flash_parameter*,int const*) ;
 int spi_nor_read_sfdp (struct spi_nor*,int ,size_t,int *) ;
 int spi_nor_regions_sort_erase_types (int *) ;

__attribute__((used)) static int spi_nor_parse_smpt(struct spi_nor *nor,
         const struct sfdp_parameter_header *smpt_header,
         struct spi_nor_flash_parameter *params)
{
 const u32 *sector_map;
 u32 *smpt;
 size_t len;
 u32 addr;
 int i, ret;


 len = smpt_header->length * sizeof(*smpt);
 smpt = kmalloc(len, GFP_KERNEL);
 if (!smpt)
  return -ENOMEM;

 addr = SFDP_PARAM_HEADER_PTP(smpt_header);
 ret = spi_nor_read_sfdp(nor, addr, len, smpt);
 if (ret)
  goto out;


 for (i = 0; i < smpt_header->length; i++)
  smpt[i] = le32_to_cpu(smpt[i]);

 sector_map = spi_nor_get_map_in_use(nor, smpt, smpt_header->length);
 if (IS_ERR(sector_map)) {
  ret = PTR_ERR(sector_map);
  goto out;
 }

 ret = spi_nor_init_non_uniform_erase_map(nor, params, sector_map);
 if (ret)
  goto out;

 spi_nor_regions_sort_erase_types(&params->erase_map);

out:
 kfree(smpt);
 return ret;
}
