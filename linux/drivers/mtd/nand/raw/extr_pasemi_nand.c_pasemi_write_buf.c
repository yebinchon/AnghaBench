
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int memcpy_toio (int ,int const*,int) ;

__attribute__((used)) static void pasemi_write_buf(struct nand_chip *chip, const u_char *buf,
        int len)
{
 while (len > 0x800) {
  memcpy_toio(chip->legacy.IO_ADDR_R, buf, 0x800);
  buf += 0x800;
  len -= 0x800;
 }
 memcpy_toio(chip->legacy.IO_ADDR_R, buf, len);
}
