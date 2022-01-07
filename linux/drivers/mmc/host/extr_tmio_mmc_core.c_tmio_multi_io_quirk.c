
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int (* multi_io_quirk ) (struct mmc_card*,unsigned int,int) ;} ;
struct mmc_card {int host; } ;


 struct tmio_mmc_host* mmc_priv (int ) ;
 int stub1 (struct mmc_card*,unsigned int,int) ;

__attribute__((used)) static int tmio_multi_io_quirk(struct mmc_card *card,
          unsigned int direction, int blk_size)
{
 struct tmio_mmc_host *host = mmc_priv(card->host);

 if (host->multi_io_quirk)
  return host->multi_io_quirk(card, direction, blk_size);

 return blk_size;
}
