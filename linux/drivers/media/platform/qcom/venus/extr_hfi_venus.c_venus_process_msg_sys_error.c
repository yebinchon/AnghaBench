
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int dummy; } ;
struct hfi_msg_event_notify_pkt {scalar_t__ event_id; } ;


 scalar_t__ HFI_EVENT_SYS_ERROR ;
 int VENUS_STATE_DEINIT ;
 int venus_halt_axi (struct venus_hfi_device*) ;
 int venus_set_state (struct venus_hfi_device*,int ) ;
 int venus_sfr_print (struct venus_hfi_device*) ;

__attribute__((used)) static void venus_process_msg_sys_error(struct venus_hfi_device *hdev,
     void *packet)
{
 struct hfi_msg_event_notify_pkt *event_pkt = packet;

 if (event_pkt->event_id != HFI_EVENT_SYS_ERROR)
  return;

 venus_set_state(hdev, VENUS_STATE_DEINIT);







 venus_halt_axi(hdev);
 venus_sfr_print(hdev);
}
