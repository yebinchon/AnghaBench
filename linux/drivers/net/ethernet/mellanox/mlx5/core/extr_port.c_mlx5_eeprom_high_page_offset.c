
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_EEPROM_HIGH_PAGE_LENGTH ;

__attribute__((used)) static int mlx5_eeprom_high_page_offset(int page_num)
{
 if (!page_num)
  return 0;


 return page_num * MLX5_EEPROM_HIGH_PAGE_LENGTH;
}
