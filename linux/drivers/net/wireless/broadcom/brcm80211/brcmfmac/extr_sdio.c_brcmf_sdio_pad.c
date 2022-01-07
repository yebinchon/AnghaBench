
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcmf_sdio {int roundup; int blocksize; int head_align; } ;


 scalar_t__ BRCMF_FIRSTREAD ;
 scalar_t__ MAX_RX_DATASZ ;

__attribute__((used)) static void brcmf_sdio_pad(struct brcmf_sdio *bus, u16 *pad, u16 *rdlen)
{
 if (bus->roundup && bus->blocksize && *rdlen > bus->blocksize) {
  *pad = bus->blocksize - (*rdlen % bus->blocksize);
  if (*pad <= bus->roundup && *pad < bus->blocksize &&
      *rdlen + *pad + BRCMF_FIRSTREAD < MAX_RX_DATASZ)
   *rdlen += *pad;
 } else if (*rdlen % bus->head_align) {
  *rdlen += bus->head_align - (*rdlen % bus->head_align);
 }
}
