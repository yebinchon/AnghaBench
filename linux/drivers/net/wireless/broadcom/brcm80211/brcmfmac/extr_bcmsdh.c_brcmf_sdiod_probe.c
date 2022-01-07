
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct brcmf_sdio_dev {TYPE_2__* func2; int bus; TYPE_2__* func1; } ;
struct TYPE_7__ {TYPE_1__* card; int enable_timeout; } ;
struct TYPE_6__ {int host; } ;


 int ENODEV ;
 int SDIO_FUNC1_BLOCKSIZE ;
 int SDIO_FUNC2_BLOCKSIZE ;
 int SDIO_WAIT_F2RDY ;
 int brcmf_err (char*,...) ;
 int brcmf_sdio_probe (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_freezer_attach (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_host_fixup (int ) ;
 int brcmf_sdiod_remove (struct brcmf_sdio_dev*) ;
 int sdio_claim_host (TYPE_2__*) ;
 int sdio_enable_func (TYPE_2__*) ;
 int sdio_release_host (TYPE_2__*) ;
 int sdio_set_block_size (TYPE_2__*,int ) ;

__attribute__((used)) static int brcmf_sdiod_probe(struct brcmf_sdio_dev *sdiodev)
{
 int ret = 0;

 sdio_claim_host(sdiodev->func1);

 ret = sdio_set_block_size(sdiodev->func1, SDIO_FUNC1_BLOCKSIZE);
 if (ret) {
  brcmf_err("Failed to set F1 blocksize\n");
  sdio_release_host(sdiodev->func1);
  goto out;
 }
 ret = sdio_set_block_size(sdiodev->func2, SDIO_FUNC2_BLOCKSIZE);
 if (ret) {
  brcmf_err("Failed to set F2 blocksize\n");
  sdio_release_host(sdiodev->func1);
  goto out;
 }


 sdiodev->func2->enable_timeout = SDIO_WAIT_F2RDY;


 ret = sdio_enable_func(sdiodev->func1);
 sdio_release_host(sdiodev->func1);
 if (ret) {
  brcmf_err("Failed to enable F1: err=%d\n", ret);
  goto out;
 }

 ret = brcmf_sdiod_freezer_attach(sdiodev);
 if (ret)
  goto out;


 sdiodev->bus = brcmf_sdio_probe(sdiodev);
 if (!sdiodev->bus) {
  ret = -ENODEV;
  goto out;
 }
 brcmf_sdiod_host_fixup(sdiodev->func2->card->host);
out:
 if (ret)
  brcmf_sdiod_remove(sdiodev);

 return ret;
}
