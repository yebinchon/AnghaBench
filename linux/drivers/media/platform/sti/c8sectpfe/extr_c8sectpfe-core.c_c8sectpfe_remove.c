
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct channel_info {int dummy; } ;
struct c8sectpfei {int tsin_count; scalar_t__ c8sectpfeclk; scalar_t__ io; int dev; struct channel_info** channel_data; int * c8sectpfe; int fw_ack; } ;


 scalar_t__ DMA_CPU_RUN ;
 scalar_t__ SYS_INPUT_CLKEN ;
 scalar_t__ SYS_OTHER_CLKEN ;
 int c8sectpfe_debugfs_exit (struct c8sectpfei*) ;
 int c8sectpfe_tuner_unregister_frontend (int ,struct c8sectpfei*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int dev_info (int ,char*) ;
 int free_input_block (struct c8sectpfei*,struct channel_info*) ;
 struct c8sectpfei* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ readl (scalar_t__) ;
 int wait_for_completion (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int c8sectpfe_remove(struct platform_device *pdev)
{
 struct c8sectpfei *fei = platform_get_drvdata(pdev);
 struct channel_info *channel;
 int i;

 wait_for_completion(&fei->fw_ack);

 c8sectpfe_tuner_unregister_frontend(fei->c8sectpfe[0], fei);




 for (i = 0; i < fei->tsin_count; i++) {
  channel = fei->channel_data[i];
  free_input_block(fei, channel);
 }

 c8sectpfe_debugfs_exit(fei);

 dev_info(fei->dev, "Stopping memdma SLIM core\n");
 if (readl(fei->io + DMA_CPU_RUN))
  writel(0x0, fei->io + DMA_CPU_RUN);


 if (readl(fei->io + SYS_INPUT_CLKEN))
  writel(0, fei->io + SYS_INPUT_CLKEN);

 if (readl(fei->io + SYS_OTHER_CLKEN))
  writel(0, fei->io + SYS_OTHER_CLKEN);

 if (fei->c8sectpfeclk)
  clk_disable_unprepare(fei->c8sectpfeclk);

 return 0;
}
