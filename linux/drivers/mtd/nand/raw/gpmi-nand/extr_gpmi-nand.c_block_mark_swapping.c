
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_geometry {unsigned int block_mark_bit_offset; int block_mark_byte_offset; } ;
struct gpmi_nand_data {int swap_block_mark; struct bch_geometry bch_geometry; } ;



__attribute__((used)) static void block_mark_swapping(struct gpmi_nand_data *this,
    void *payload, void *auxiliary)
{
 struct bch_geometry *nfc_geo = &this->bch_geometry;
 unsigned char *p;
 unsigned char *a;
 unsigned int bit;
 unsigned char mask;
 unsigned char from_data;
 unsigned char from_oob;

 if (!this->swap_block_mark)
  return;





 bit = nfc_geo->block_mark_bit_offset;
 p = payload + nfc_geo->block_mark_byte_offset;
 a = auxiliary;







 from_data = (p[0] >> bit) | (p[1] << (8 - bit));


 from_oob = a[0];


 a[0] = from_data;

 mask = (0x1 << bit) - 1;
 p[0] = (p[0] & mask) | (from_oob << bit);

 mask = ~0 << bit;
 p[1] = (p[1] & mask) | (from_oob >> (8 - bit));
}
