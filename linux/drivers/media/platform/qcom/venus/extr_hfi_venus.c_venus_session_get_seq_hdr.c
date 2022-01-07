
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_get_sequence_header_pkt {int dummy; } ;


 int IFACEQ_VAR_SMALL_PKT_SIZE ;
 int pkt_session_get_seq_hdr (struct hfi_session_get_sequence_header_pkt*,struct venus_inst*,int ,int ) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_session_get_sequence_header_pkt*) ;

__attribute__((used)) static int venus_session_get_seq_hdr(struct venus_inst *inst, u32 seq_hdr,
         u32 seq_hdr_len)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct hfi_session_get_sequence_header_pkt *pkt;
 u8 packet[IFACEQ_VAR_SMALL_PKT_SIZE];
 int ret;

 pkt = (struct hfi_session_get_sequence_header_pkt *)packet;

 ret = pkt_session_get_seq_hdr(pkt, inst, seq_hdr, seq_hdr_len);
 if (ret)
  return ret;

 return venus_iface_cmdq_write(hdev, pkt);
}
