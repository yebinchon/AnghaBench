
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_card {int host; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_SEND_CSD ;
 int be32_to_cpu (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mmc_send_cxd_data (struct mmc_card*,int ,int ,int *,int) ;

__attribute__((used)) static int mmc_spi_send_csd(struct mmc_card *card, u32 *csd)
{
 int ret, i;
 __be32 *csd_tmp;

 csd_tmp = kzalloc(16, GFP_KERNEL);
 if (!csd_tmp)
  return -ENOMEM;

 ret = mmc_send_cxd_data(card, card->host, MMC_SEND_CSD, csd_tmp, 16);
 if (ret)
  goto err;

 for (i = 0; i < 4; i++)
  csd[i] = be32_to_cpu(csd_tmp[i]);

err:
 kfree(csd_tmp);
 return ret;
}
