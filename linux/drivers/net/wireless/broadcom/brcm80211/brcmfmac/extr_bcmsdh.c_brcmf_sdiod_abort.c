
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; } ;
struct brcmf_sdio_dev {int dummy; } ;


 int SDIO ;
 int SDIO_CCCR_ABORT ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_sdiod_func0_wb (struct brcmf_sdio_dev*,int ,int ,int *) ;

int brcmf_sdiod_abort(struct brcmf_sdio_dev *sdiodev, struct sdio_func *func)
{
 brcmf_dbg(SDIO, "Enter\n");


 brcmf_sdiod_func0_wb(sdiodev, SDIO_CCCR_ABORT, func->num, ((void*)0));

 brcmf_dbg(SDIO, "Exit\n");
 return 0;
}
