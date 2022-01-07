
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_release_buffer_pkt {int dummy; } ;
struct hfi_buffer_desc {scalar_t__ buffer_type; } ;


 scalar_t__ HFI_BUFFER_INPUT ;
 int IFACEQ_VAR_LARGE_PKT_SIZE ;
 int pkt_session_unset_buffers (struct hfi_session_release_buffer_pkt*,struct venus_inst*,struct hfi_buffer_desc*) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_session_release_buffer_pkt*) ;

__attribute__((used)) static int venus_session_unset_buffers(struct venus_inst *inst,
           struct hfi_buffer_desc *bd)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct hfi_session_release_buffer_pkt *pkt;
 u8 packet[IFACEQ_VAR_LARGE_PKT_SIZE];
 int ret;

 if (bd->buffer_type == HFI_BUFFER_INPUT)
  return 0;

 pkt = (struct hfi_session_release_buffer_pkt *)packet;

 ret = pkt_session_unset_buffers(pkt, inst, bd);
 if (ret)
  return ret;

 return venus_iface_cmdq_write(hdev, pkt);
}
