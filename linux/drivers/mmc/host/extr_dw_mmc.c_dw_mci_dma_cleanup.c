
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {scalar_t__ host_cookie; int sg_len; int sg; } ;
struct dw_mci {int dev; struct mmc_data* data; } ;


 scalar_t__ COOKIE_MAPPED ;
 scalar_t__ COOKIE_UNMAPPED ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void dw_mci_dma_cleanup(struct dw_mci *host)
{
 struct mmc_data *data = host->data;

 if (data && data->host_cookie == COOKIE_MAPPED) {
  dma_unmap_sg(host->dev,
        data->sg,
        data->sg_len,
        mmc_get_dma_dir(data));
  data->host_cookie = COOKIE_UNMAPPED;
 }
}
