
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void jz_nand_correct_data(uint8_t *buf, int index, int mask)
{
 int offset = index & 0x7;
 uint16_t data;

 index += (index >> 3);

 data = buf[index];
 data |= buf[index + 1] << 8;

 mask ^= (data >> offset) & 0x1ff;
 data &= ~(0x1ff << offset);
 data |= (mask << offset);

 buf[index] = data & 0xff;
 buf[index + 1] = (data >> 8) & 0xff;
}
