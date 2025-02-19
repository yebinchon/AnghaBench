
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct av7110 {unsigned char* bin_fw; unsigned char* bin_dpram; int size_dpram; int size_fw; unsigned char* bin_root; int size_root; } ;


 int EINVAL ;
 int crc32_le (int ,unsigned char*,int) ;
 int get_unaligned_be32 (unsigned char*) ;
 int printk (char*,...) ;

__attribute__((used)) static int check_firmware(struct av7110* av7110)
{
 u32 crc = 0, len = 0;
 unsigned char *ptr;


 ptr = av7110->bin_fw;
 if (ptr[0] != 'A' || ptr[1] != 'V' ||
     ptr[2] != 'F' || ptr[3] != 'W') {
  printk("dvb-ttpci: this is not an av7110 firmware\n");
  return -EINVAL;
 }
 ptr += 4;


 crc = get_unaligned_be32(ptr);
 ptr += 4;
 len = get_unaligned_be32(ptr);
 ptr += 4;
 if (len >= 512) {
  printk("dvb-ttpci: dpram file is way too big.\n");
  return -EINVAL;
 }
 if (crc != crc32_le(0, ptr, len)) {
  printk("dvb-ttpci: crc32 of dpram file does not match.\n");
  return -EINVAL;
 }
 av7110->bin_dpram = ptr;
 av7110->size_dpram = len;
 ptr += len;


 crc = get_unaligned_be32(ptr);
 ptr += 4;
 len = get_unaligned_be32(ptr);
 ptr += 4;

 if (len <= 200000 || len >= 300000 ||
     len > ((av7110->bin_fw + av7110->size_fw) - ptr)) {
  printk("dvb-ttpci: root file has strange size (%d). aborting.\n", len);
  return -EINVAL;
 }
 if( crc != crc32_le(0, ptr, len)) {
  printk("dvb-ttpci: crc32 of root file does not match.\n");
  return -EINVAL;
 }
 av7110->bin_root = ptr;
 av7110->size_root = len;
 return 0;
}
