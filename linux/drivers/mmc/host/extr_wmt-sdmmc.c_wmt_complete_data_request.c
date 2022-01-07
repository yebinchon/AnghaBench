
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmt_mci_priv {int mmc; TYPE_2__* cmd; int * comp_cmd; int cmdcomp; struct mmc_request* req; } ;
struct mmc_request {TYPE_3__* data; TYPE_1__* cmd; } ;
struct TYPE_6__ {int bytes_xfered; int blksz; int blocks; int flags; TYPE_2__* stop; scalar_t__ error; int sg_len; int sg; } ;
struct TYPE_5__ {int arg; int opcode; } ;
struct TYPE_4__ {scalar_t__ error; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_WRITE ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int init_completion (int *) ;
 int mmc_dev (int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int wmt_mci_read_response (int ) ;
 int wmt_mci_send_command (int ,int ,int,int ,int) ;
 int wmt_mci_start_command (struct wmt_mci_priv*) ;

__attribute__((used)) static void wmt_complete_data_request(struct wmt_mci_priv *priv)
{
 struct mmc_request *req;
 req = priv->req;

 req->data->bytes_xfered = req->data->blksz * req->data->blocks;


 if (req->data->flags & MMC_DATA_WRITE)
  dma_unmap_sg(mmc_dev(priv->mmc), req->data->sg,
        req->data->sg_len, DMA_TO_DEVICE);
 else
  dma_unmap_sg(mmc_dev(priv->mmc), req->data->sg,
        req->data->sg_len, DMA_FROM_DEVICE);


 if ((req->cmd->error) || (req->data->error))
  mmc_request_done(priv->mmc, req);
 else {
  wmt_mci_read_response(priv->mmc);
  if (!req->data->stop) {

   mmc_request_done(priv->mmc, req);
  } else {





   priv->comp_cmd = &priv->cmdcomp;
   init_completion(priv->comp_cmd);
   priv->cmd = req->data->stop;
   wmt_mci_send_command(priv->mmc, req->data->stop->opcode,
          7, req->data->stop->arg, 9);
   wmt_mci_start_command(priv);
  }
 }
}
