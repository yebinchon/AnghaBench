
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_SEND_CID ;
 int be32_to_cpu (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mmc_send_cxd_data (int *,struct mmc_host*,int ,int *,int) ;

__attribute__((used)) static int mmc_spi_send_cid(struct mmc_host *host, u32 *cid)
{
 int ret, i;
 __be32 *cid_tmp;

 cid_tmp = kzalloc(16, GFP_KERNEL);
 if (!cid_tmp)
  return -ENOMEM;

 ret = mmc_send_cxd_data(((void*)0), host, MMC_SEND_CID, cid_tmp, 16);
 if (ret)
  goto err;

 for (i = 0; i < 4; i++)
  cid[i] = be32_to_cpu(cid_tmp[i]);

err:
 kfree(cid_tmp);
 return ret;
}
