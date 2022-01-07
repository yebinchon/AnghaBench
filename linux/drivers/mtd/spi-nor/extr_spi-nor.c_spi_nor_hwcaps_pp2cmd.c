
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int const**) ;
 int spi_nor_hwcaps2cmd (int ,int const**,int ) ;

__attribute__((used)) static int spi_nor_hwcaps_pp2cmd(u32 hwcaps)
{
 static const int hwcaps_pp2cmd[][2] = {
  { 134, 141 },
  { 133, 140 },
  { 131, 138 },
  { 129, 136 },
  { 132, 139 },
  { 130, 137 },
  { 128, 135 },
 };

 return spi_nor_hwcaps2cmd(hwcaps, hwcaps_pp2cmd,
      ARRAY_SIZE(hwcaps_pp2cmd));
}
