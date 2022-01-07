
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_rx_pkt {int dummy; } ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload; } ;
struct il_device_cmd {TYPE_1__ cmd; } ;
struct il_addsta_cmd {int dummy; } ;


 int il_process_add_sta_resp (struct il_priv*,struct il_addsta_cmd*,struct il_rx_pkt*,int) ;

__attribute__((used)) static void
il_add_sta_callback(struct il_priv *il, struct il_device_cmd *cmd,
      struct il_rx_pkt *pkt)
{
 struct il_addsta_cmd *addsta = (struct il_addsta_cmd *)cmd->cmd.payload;

 il_process_add_sta_resp(il, addsta, pkt, 0);

}
