
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int * compr_block_types; } ;



__attribute__((used)) static int usbvision_decompress(struct usb_usbvision *usbvision, unsigned char *compressed,
        unsigned char *decompressed, int *start_pos,
        int *block_typestart_pos, int len)
{
 int rest_pixel, idx, pos, extra_pos, block_len, block_type_pos, block_type_len;
 unsigned char block_byte, block_code, block_type, block_type_byte, integrator;

 integrator = 0;
 pos = *start_pos;
 block_type_pos = *block_typestart_pos;
 extra_pos = pos;
 block_len = 0;
 block_byte = 0;
 block_code = 0;
 block_type = 0;
 block_type_byte = 0;
 block_type_len = 0;
 rest_pixel = len;

 for (idx = 0; idx < len; idx++) {
  if (block_len == 0) {
   if (block_type_len == 0) {
    block_type_byte = compressed[block_type_pos];
    block_type_pos++;
    block_type_len = 4;
   }
   block_type = (block_type_byte & 0xC0) >> 6;


   usbvision->compr_block_types[block_type]++;

   pos = extra_pos;
   if (block_type == 0) {
    if (rest_pixel >= 24) {
     idx += 23;
     rest_pixel -= 24;
     integrator = decompressed[idx];
    } else {
     idx += rest_pixel - 1;
     rest_pixel = 0;
    }
   } else {
    block_code = compressed[pos];
    pos++;
    if (rest_pixel >= 24)
     block_len = 24;
    else
     block_len = rest_pixel;
    rest_pixel -= block_len;
    extra_pos = pos + (block_len / 4);
   }
   block_type_byte <<= 2;
   block_type_len -= 1;
  }
  if (block_len > 0) {
   if ((block_len % 4) == 0) {
    block_byte = compressed[pos];
    pos++;
   }
   if (block_type == 1)
    integrator = decompressed[idx];
   switch (block_byte & 0xC0) {
   case 0x03 << 6:
    integrator += compressed[extra_pos];
    extra_pos++;
    break;
   case 0x02 << 6:
    integrator += block_code;
    break;
   case 0x00:
    integrator -= block_code;
    break;
   }
   decompressed[idx] = integrator;
   block_byte <<= 2;
   block_len -= 1;
  }
 }
 *start_pos = extra_pos;
 *block_typestart_pos = block_type_pos;
 return idx;
}
