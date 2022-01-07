
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dev; } ;
struct if_sdio_packet {scalar_t__ model; struct if_sdio_packet* next; struct if_sdio_packet* packets; int workqueue; int priv; } ;
struct if_sdio_card {scalar_t__ model; struct if_sdio_card* next; struct if_sdio_card* packets; int workqueue; int priv; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;


 int CMD_FUNC_SHUTDOWN ;
 scalar_t__ MODEL_8688 ;
 scalar_t__ __lbs_cmd (int ,int ,struct cmd_header*,int,int ,unsigned long) ;
 int destroy_workqueue (int ) ;
 int kfree (struct if_sdio_packet*) ;
 int lbs_cmd_copyback ;
 int lbs_deb_sdio (char*) ;
 int lbs_remove_card (int ) ;
 int lbs_stop_card (int ) ;
 int memset (struct cmd_header*,int ,int) ;
 int pm_runtime_get_noresume (int *) ;
 int pr_alert (char*) ;
 struct if_sdio_packet* sdio_get_drvdata (struct sdio_func*) ;
 scalar_t__ user_rmmod ;

__attribute__((used)) static void if_sdio_remove(struct sdio_func *func)
{
 struct if_sdio_card *card;
 struct if_sdio_packet *packet;

 card = sdio_get_drvdata(func);


 pm_runtime_get_noresume(&func->dev);

 if (user_rmmod && (card->model == MODEL_8688)) {




  struct cmd_header cmd;

  memset(&cmd, 0, sizeof(cmd));

  lbs_deb_sdio("send function SHUTDOWN command\n");
  if (__lbs_cmd(card->priv, CMD_FUNC_SHUTDOWN,
    &cmd, sizeof(cmd), lbs_cmd_copyback,
    (unsigned long) &cmd))
   pr_alert("CMD_FUNC_SHUTDOWN cmd failed\n");
 }


 lbs_deb_sdio("call remove card\n");
 lbs_stop_card(card->priv);
 lbs_remove_card(card->priv);

 destroy_workqueue(card->workqueue);

 while (card->packets) {
  packet = card->packets;
  card->packets = card->packets->next;
  kfree(packet);
 }

 kfree(card);
}
