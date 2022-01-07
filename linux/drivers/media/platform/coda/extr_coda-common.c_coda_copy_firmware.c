
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct TYPE_4__ {int* vaddr; } ;
struct coda_dev {TYPE_2__ codebuf; TYPE_1__* devtype; } ;
typedef int __le16 ;
struct TYPE_3__ {scalar_t__ product; } ;


 scalar_t__ CODA_DX6 ;
 int __le16_to_cpup (int *) ;
 int memcpy (int*,int*,size_t) ;

__attribute__((used)) static void coda_copy_firmware(struct coda_dev *dev, const u8 * const buf,
          size_t size)
{
 u32 *src = (u32 *)buf;


 if (buf[0] == 'M' && buf[1] == 'X')
  src += 4;




 if (__le16_to_cpup((__le16 *)src) == 0xe40e) {
  u32 *dst = dev->codebuf.vaddr;
  int i;


  if (dev->devtype->product == CODA_DX6) {
   for (i = 0; i < (size - 16) / 4; i++)
    dst[i] = (src[i] << 16) | (src[i] >> 16);
  } else {
   for (i = 0; i < (size - 16) / 4; i += 2) {
    dst[i] = (src[i + 1] << 16) | (src[i + 1] >> 16);
    dst[i + 1] = (src[i] << 16) | (src[i] >> 16);
   }
  }
 } else {

  memcpy(dev->codebuf.vaddr, src, size);
 }
}
