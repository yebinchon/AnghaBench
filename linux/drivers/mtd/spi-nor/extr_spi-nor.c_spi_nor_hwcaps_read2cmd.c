
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int const**) ;
 int spi_nor_hwcaps2cmd (int ,int const**,int ) ;

__attribute__((used)) static int spi_nor_hwcaps_read2cmd(u32 hwcaps)
{
 static const int hwcaps_read2cmd[][2] = {
  { 142, 157 },
  { 128, 143 },
  { 141, 156 },
  { 140, 155 },
  { 137, 152 },
  { 131, 146 },
  { 136, 151 },
  { 139, 154 },
  { 135, 150 },
  { 130, 145 },
  { 134, 149 },
  { 138, 153 },
  { 133, 148 },
  { 129, 144 },
  { 132, 147 },
 };

 return spi_nor_hwcaps2cmd(hwcaps, hwcaps_read2cmd,
      ARRAY_SIZE(hwcaps_read2cmd));
}
