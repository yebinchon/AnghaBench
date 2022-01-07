
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_EEPROM_HIGH_PAGE_LENGTH ;
 int MLX5_EEPROM_PAGE_LENGTH ;

__attribute__((used)) static int mlx5_eeprom_page(int offset)
{
 if (offset < MLX5_EEPROM_PAGE_LENGTH)

  return 0;





 return 1 + ((offset - MLX5_EEPROM_PAGE_LENGTH) /
      MLX5_EEPROM_HIGH_PAGE_LENGTH);
}
