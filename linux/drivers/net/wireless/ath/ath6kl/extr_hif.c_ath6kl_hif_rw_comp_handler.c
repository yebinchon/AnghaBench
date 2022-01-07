
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_packet {int status; int context; int (* completion ) (int ,struct htc_packet*) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*,struct htc_packet*,int) ;
 int stub1 (int ,struct htc_packet*) ;

int ath6kl_hif_rw_comp_handler(void *context, int status)
{
 struct htc_packet *packet = context;

 ath6kl_dbg(ATH6KL_DBG_HIF, "hif rw completion pkt 0x%p status %d\n",
     packet, status);

 packet->status = status;
 packet->completion(packet->context, packet);

 return 0;
}
