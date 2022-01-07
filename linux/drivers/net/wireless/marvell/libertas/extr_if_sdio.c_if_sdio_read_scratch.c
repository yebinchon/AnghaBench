
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct if_sdio_card {scalar_t__ scratch_reg; int func; } ;


 int sdio_readb (int ,scalar_t__,int*) ;

__attribute__((used)) static u16 if_sdio_read_scratch(struct if_sdio_card *card, int *err)
{
 int ret;
 u16 scratch;

 scratch = sdio_readb(card->func, card->scratch_reg, &ret);
 if (!ret)
  scratch |= sdio_readb(card->func, card->scratch_reg + 1,
     &ret) << 8;

 if (err)
  *err = ret;

 if (ret)
  return 0xffff;

 return scratch;
}
