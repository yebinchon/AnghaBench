
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int dummy; } ;
struct dw_mci {int dummy; } ;


 int DELAY_TYPE_READ ;
 int EIO ;
 int dw_mci_zx_emmc_set_delay (struct dw_mci*,int,int ) ;

__attribute__((used)) static int dw_mci_zx_prepare_hs400_tuning(struct dw_mci *host,
       struct mmc_ios *ios)
{
 int ret;


 ret = dw_mci_zx_emmc_set_delay(host, 32, DELAY_TYPE_READ);
 if (ret < 0)
  return -EIO;

 return 0;
}
