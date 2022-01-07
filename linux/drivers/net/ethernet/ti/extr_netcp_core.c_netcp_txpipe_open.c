
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct netcp_tx_pipe {int * dma_channel; int * dma_queue; int dma_queue_id; int dma_chan_name; TYPE_1__* netcp_device; } ;
struct TYPE_5__ {int filt_einfo; int filt_pswords; int priority; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct knav_dma_cfg {TYPE_3__ u; int direction; } ;
struct device {int dummy; } ;
typedef int name ;
typedef int config ;
struct TYPE_4__ {struct device* device; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_PRIO_MED_L ;
 scalar_t__ IS_ERR (int *) ;
 int IS_ERR_OR_NULL (int *) ;
 int KNAV_QUEUE_SHARED ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int *) ;
 int dev_err (struct device*,char*,int *,...) ;
 char* dev_name (struct device*) ;
 int knav_dma_close_channel (int *) ;
 int * knav_dma_open_channel (struct device*,int ,struct knav_dma_cfg*) ;
 int * knav_queue_open (int *,int ,int ) ;
 int memset (struct knav_dma_cfg*,int ,int) ;
 int snprintf (int *,int,char*,char*) ;

int netcp_txpipe_open(struct netcp_tx_pipe *tx_pipe)
{
 struct device *dev = tx_pipe->netcp_device->device;
 struct knav_dma_cfg config;
 int ret = 0;
 u8 name[16];

 memset(&config, 0, sizeof(config));
 config.direction = DMA_MEM_TO_DEV;
 config.u.tx.filt_einfo = 0;
 config.u.tx.filt_pswords = 0;
 config.u.tx.priority = DMA_PRIO_MED_L;

 tx_pipe->dma_channel = knav_dma_open_channel(dev,
    tx_pipe->dma_chan_name, &config);
 if (IS_ERR(tx_pipe->dma_channel)) {
  dev_err(dev, "failed opening tx chan(%s)\n",
   tx_pipe->dma_chan_name);
  ret = PTR_ERR(tx_pipe->dma_channel);
  goto err;
 }

 snprintf(name, sizeof(name), "tx-pipe-%s", dev_name(dev));
 tx_pipe->dma_queue = knav_queue_open(name, tx_pipe->dma_queue_id,
          KNAV_QUEUE_SHARED);
 if (IS_ERR(tx_pipe->dma_queue)) {
  dev_err(dev, "Could not open DMA queue for channel \"%s\": %d\n",
   name, ret);
  ret = PTR_ERR(tx_pipe->dma_queue);
  goto err;
 }

 dev_dbg(dev, "opened tx pipe %s\n", name);
 return 0;

err:
 if (!IS_ERR_OR_NULL(tx_pipe->dma_channel))
  knav_dma_close_channel(tx_pipe->dma_channel);
 tx_pipe->dma_channel = ((void*)0);
 return ret;
}
