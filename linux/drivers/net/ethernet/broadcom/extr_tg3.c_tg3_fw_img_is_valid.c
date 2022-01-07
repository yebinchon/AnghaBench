
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 scalar_t__ tg3_nvram_read (struct tg3*,int,int*) ;

__attribute__((used)) static int tg3_fw_img_is_valid(struct tg3 *tp, u32 offset)
{
 u32 val;

 if (tg3_nvram_read(tp, offset, &val) ||
     (val & 0xfc000000) != 0x0c000000 ||
     tg3_nvram_read(tp, offset + 4, &val) ||
     val != 0)
  return 0;

 return 1;
}
