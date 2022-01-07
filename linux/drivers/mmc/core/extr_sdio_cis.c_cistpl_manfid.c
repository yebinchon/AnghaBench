
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {unsigned int vendor; unsigned int device; } ;
struct TYPE_2__ {unsigned int vendor; unsigned int device; } ;
struct mmc_card {TYPE_1__ cis; } ;



__attribute__((used)) static int cistpl_manfid(struct mmc_card *card, struct sdio_func *func,
    const unsigned char *buf, unsigned size)
{
 unsigned int vendor, device;


 vendor = buf[0] | (buf[1] << 8);


 device = buf[2] | (buf[3] << 8);

 if (func) {
  func->vendor = vendor;
  func->device = device;
 } else {
  card->cis.vendor = vendor;
  card->cis.device = device;
 }

 return 0;
}
