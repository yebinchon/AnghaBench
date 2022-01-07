
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdio_func {int num; TYPE_1__* card; } ;
struct mmc_request {int dummy; } ;
struct mmc_data {int sg_len; int blocks; int error; } ;
struct mmc_command {int arg; int error; } ;
struct brcmf_sdio_dev {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int BRCMF_SDIOD_NOMEDIUM ;
 int EIO ;
 int ENOMEDIUM ;
 int brcmf_err (char*,char*,int) ;
 int brcmf_sdiod_change_state (struct brcmf_sdio_dev*,int ) ;
 int mmc_set_data_timeout (struct mmc_data*,TYPE_1__*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;

__attribute__((used)) static int mmc_submit_one(struct mmc_data *md, struct mmc_request *mr,
     struct mmc_command *mc, int sg_cnt, int req_sz,
     int func_blk_sz, u32 *addr,
     struct brcmf_sdio_dev *sdiodev,
     struct sdio_func *func, int write)
{
 int ret;

 md->sg_len = sg_cnt;
 md->blocks = req_sz / func_blk_sz;
 mc->arg |= (*addr & 0x1FFFF) << 9;
 mc->arg |= md->blocks & 0x1FF;

 if (func->num == 1)
  *addr += req_sz;

 mmc_set_data_timeout(md, func->card);
 mmc_wait_for_req(func->card->host, mr);

 ret = mc->error ? mc->error : md->error;
 if (ret == -ENOMEDIUM) {
  brcmf_sdiod_change_state(sdiodev, BRCMF_SDIOD_NOMEDIUM);
 } else if (ret != 0) {
  brcmf_err("CMD53 sg block %s failed %d\n",
     write ? "write" : "read", ret);
  ret = -EIO;
 }

 return ret;
}
