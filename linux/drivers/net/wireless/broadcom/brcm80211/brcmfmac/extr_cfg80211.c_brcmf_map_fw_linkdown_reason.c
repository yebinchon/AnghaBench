
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcmf_event_msg {int event_code; int reason; } ;







__attribute__((used)) static u16 brcmf_map_fw_linkdown_reason(const struct brcmf_event_msg *e)
{
 u16 reason;

 switch (e->event_code) {
 case 131:
 case 130:
 case 129:
  reason = e->reason;
  break;
 case 128:
 default:
  reason = 0;
  break;
 }
 return reason;
}
