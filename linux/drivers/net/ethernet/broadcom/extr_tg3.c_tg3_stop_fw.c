
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int ENABLE_APE ;
 int ENABLE_ASF ;
 int FWCMD_NICDRV_PAUSE_FW ;
 int NIC_SRAM_FW_CMD_MBOX ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_generate_fw_event (struct tg3*) ;
 int tg3_wait_for_event_ack (struct tg3*) ;
 int tg3_write_mem (struct tg3*,int ,int ) ;

__attribute__((used)) static void tg3_stop_fw(struct tg3 *tp)
{
 if (tg3_flag(tp, ENABLE_ASF) && !tg3_flag(tp, ENABLE_APE)) {

  tg3_wait_for_event_ack(tp);

  tg3_write_mem(tp, NIC_SRAM_FW_CMD_MBOX, FWCMD_NICDRV_PAUSE_FW);

  tg3_generate_fw_event(tp);


  tg3_wait_for_event_ack(tp);
 }
}
