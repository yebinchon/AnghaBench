
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tg3 {TYPE_1__* pdev; int ape_hb; } ;
struct TYPE_2__ {int dev; } ;


 int APE_EVENT_STATUS_DRIVER_EVNT ;
 int APE_EVENT_STATUS_STATE_CHNGE ;
 int APE_EVENT_STATUS_STATE_START ;
 int APE_EVENT_STATUS_STATE_UNLOAD ;
 int APE_HOST_BEHAV_NO_PHYLOCK ;
 int APE_HOST_DRIVER_ID_MAGIC (int ,int ) ;
 int APE_HOST_SEG_LEN_MAGIC ;
 int APE_HOST_SEG_SIG_MAGIC ;
 int ENABLE_APE ;


 int TG3_APE_HOST_BEHAVIOR ;
 int TG3_APE_HOST_DRIVER_ID ;
 int TG3_APE_HOST_DRVR_STATE ;
 int TG3_APE_HOST_DRVR_STATE_START ;
 int TG3_APE_HOST_DRVR_STATE_UNLOAD ;
 int TG3_APE_HOST_DRVR_STATE_WOL ;
 int TG3_APE_HOST_HEARTBEAT_COUNT ;
 int TG3_APE_HOST_INIT_COUNT ;
 int TG3_APE_HOST_SEG_LEN ;
 int TG3_APE_HOST_SEG_SIG ;
 int TG3_APE_HOST_WOL_SPEED ;
 int TG3_APE_HOST_WOL_SPEED_AUTO ;
 int TG3_MAJ_NUM ;
 int TG3_MIN_NUM ;
 int WOL_ENABLE ;
 int device_may_wakeup (int *) ;
 int tg3_ape_read32 (struct tg3*,int ) ;
 int tg3_ape_send_event (struct tg3*,int) ;
 int tg3_ape_write32 (struct tg3*,int ,int) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static void tg3_ape_driver_state_change(struct tg3 *tp, int kind)
{
 u32 event;
 u32 apedata;

 if (!tg3_flag(tp, ENABLE_APE))
  return;

 switch (kind) {
 case 129:
  tg3_ape_write32(tp, TG3_APE_HOST_HEARTBEAT_COUNT, tp->ape_hb++);
  tg3_ape_write32(tp, TG3_APE_HOST_SEG_SIG,
    APE_HOST_SEG_SIG_MAGIC);
  tg3_ape_write32(tp, TG3_APE_HOST_SEG_LEN,
    APE_HOST_SEG_LEN_MAGIC);
  apedata = tg3_ape_read32(tp, TG3_APE_HOST_INIT_COUNT);
  tg3_ape_write32(tp, TG3_APE_HOST_INIT_COUNT, ++apedata);
  tg3_ape_write32(tp, TG3_APE_HOST_DRIVER_ID,
   APE_HOST_DRIVER_ID_MAGIC(TG3_MAJ_NUM, TG3_MIN_NUM));
  tg3_ape_write32(tp, TG3_APE_HOST_BEHAVIOR,
    APE_HOST_BEHAV_NO_PHYLOCK);
  tg3_ape_write32(tp, TG3_APE_HOST_DRVR_STATE,
        TG3_APE_HOST_DRVR_STATE_START);

  event = APE_EVENT_STATUS_STATE_START;
  break;
 case 128:
  if (device_may_wakeup(&tp->pdev->dev) &&
      tg3_flag(tp, WOL_ENABLE)) {
   tg3_ape_write32(tp, TG3_APE_HOST_WOL_SPEED,
         TG3_APE_HOST_WOL_SPEED_AUTO);
   apedata = TG3_APE_HOST_DRVR_STATE_WOL;
  } else
   apedata = TG3_APE_HOST_DRVR_STATE_UNLOAD;

  tg3_ape_write32(tp, TG3_APE_HOST_DRVR_STATE, apedata);

  event = APE_EVENT_STATUS_STATE_UNLOAD;
  break;
 default:
  return;
 }

 event |= APE_EVENT_STATUS_DRIVER_EVNT | APE_EVENT_STATUS_STATE_CHNGE;

 tg3_ape_send_event(tp, event);
}
