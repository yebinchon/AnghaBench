
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_test_ssr_pkt {int trigger_type; TYPE_1__ hdr; } ;


 int EINVAL ;
 int HFI_CMD_SYS_TEST_SSR ;




int pkt_sys_ssr_cmd(struct hfi_sys_test_ssr_pkt *pkt, u32 trigger_type)
{
 switch (trigger_type) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_TEST_SSR;
 pkt->trigger_type = trigger_type;

 return 0;
}
