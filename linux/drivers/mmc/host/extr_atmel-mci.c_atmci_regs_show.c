
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct atmel_mci* private; } ;
struct TYPE_4__ {scalar_t__ has_cfg_reg; scalar_t__ has_dma_conf_reg; scalar_t__ has_cstor_reg; scalar_t__ has_odd_clk_div; } ;
struct atmel_mci {TYPE_2__ caps; TYPE_1__* pdev; int lock; int regs; } ;
struct TYPE_3__ {int dev; } ;


 int ATMCI_ARGR ;
 int ATMCI_BLKR ;
 int ATMCI_CFG ;
 int ATMCI_CFG_FERRCTRL_COR ;
 int ATMCI_CFG_FIFOMODE_1DATA ;
 int ATMCI_CFG_HSMODE ;
 int ATMCI_CFG_LSYNC ;
 int ATMCI_CSTOR ;
 int ATMCI_DMA ;
 int ATMCI_DMAEN ;
 int ATMCI_DTOR ;
 int ATMCI_IMR ;
 int ATMCI_MR ;
 int ATMCI_MR_RDPROOF ;
 int ATMCI_MR_WRPROOF ;
 int ATMCI_REGS_SIZE ;
 int ATMCI_SDCR ;
 int ATMCI_SR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atmci_show_status_reg (struct seq_file*,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memcpy_fromio (int*,int ,int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int atmci_regs_show(struct seq_file *s, void *v)
{
 struct atmel_mci *host = s->private;
 u32 *buf;
 int ret = 0;


 buf = kmalloc(ATMCI_REGS_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 pm_runtime_get_sync(&host->pdev->dev);






 spin_lock_bh(&host->lock);
 memcpy_fromio(buf, host->regs, ATMCI_REGS_SIZE);
 spin_unlock_bh(&host->lock);

 pm_runtime_mark_last_busy(&host->pdev->dev);
 pm_runtime_put_autosuspend(&host->pdev->dev);

 seq_printf(s, "MR:\t0x%08x%s%s ",
   buf[ATMCI_MR / 4],
   buf[ATMCI_MR / 4] & ATMCI_MR_RDPROOF ? " RDPROOF" : "",
   buf[ATMCI_MR / 4] & ATMCI_MR_WRPROOF ? " WRPROOF" : "");
 if (host->caps.has_odd_clk_div)
  seq_printf(s, "{CLKDIV,CLKODD}=%u\n",
    ((buf[ATMCI_MR / 4] & 0xff) << 1)
    | ((buf[ATMCI_MR / 4] >> 16) & 1));
 else
  seq_printf(s, "CLKDIV=%u\n",
    (buf[ATMCI_MR / 4] & 0xff));
 seq_printf(s, "DTOR:\t0x%08x\n", buf[ATMCI_DTOR / 4]);
 seq_printf(s, "SDCR:\t0x%08x\n", buf[ATMCI_SDCR / 4]);
 seq_printf(s, "ARGR:\t0x%08x\n", buf[ATMCI_ARGR / 4]);
 seq_printf(s, "BLKR:\t0x%08x BCNT=%u BLKLEN=%u\n",
   buf[ATMCI_BLKR / 4],
   buf[ATMCI_BLKR / 4] & 0xffff,
   (buf[ATMCI_BLKR / 4] >> 16) & 0xffff);
 if (host->caps.has_cstor_reg)
  seq_printf(s, "CSTOR:\t0x%08x\n", buf[ATMCI_CSTOR / 4]);



 atmci_show_status_reg(s, "SR", buf[ATMCI_SR / 4]);
 atmci_show_status_reg(s, "IMR", buf[ATMCI_IMR / 4]);

 if (host->caps.has_dma_conf_reg) {
  u32 val;

  val = buf[ATMCI_DMA / 4];
  seq_printf(s, "DMA:\t0x%08x OFFSET=%u CHKSIZE=%u%s\n",
    val, val & 3,
    ((val >> 4) & 3) ?
     1 << (((val >> 4) & 3) + 1) : 1,
    val & ATMCI_DMAEN ? " DMAEN" : "");
 }
 if (host->caps.has_cfg_reg) {
  u32 val;

  val = buf[ATMCI_CFG / 4];
  seq_printf(s, "CFG:\t0x%08x%s%s%s%s\n",
    val,
    val & ATMCI_CFG_FIFOMODE_1DATA ? " FIFOMODE_ONE_DATA" : "",
    val & ATMCI_CFG_FERRCTRL_COR ? " FERRCTRL_CLEAR_ON_READ" : "",
    val & ATMCI_CFG_HSMODE ? " HSMODE" : "",
    val & ATMCI_CFG_LSYNC ? " LSYNC" : "");
 }

 kfree(buf);

 return ret;
}
