
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boot_rom_geometry {int stride_size_in_pages; int search_area_stride_exponent; } ;
struct gpmi_nand_data {struct boot_rom_geometry rom_geometry; } ;



__attribute__((used)) static int nand_boot_set_geometry(struct gpmi_nand_data *this)
{
 struct boot_rom_geometry *geometry = &this->rom_geometry;
 geometry->stride_size_in_pages = 64;
 geometry->search_area_stride_exponent = 2;
 return 0;
}
