
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_card {int host; } ;


 int mmc_io_rw_direct_host (int ,int,unsigned int,unsigned int,int ,int *) ;

int mmc_io_rw_direct(struct mmc_card *card, int write, unsigned fn,
 unsigned addr, u8 in, u8 *out)
{
 return mmc_io_rw_direct_host(card->host, write, fn, addr, in, out);
}
