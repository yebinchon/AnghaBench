
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_fill_buffer_pkt {int dummy; } ;
struct hfi_frame_data {int dummy; } ;


 int pkt_session_ftb (struct hfi_session_fill_buffer_pkt*,struct venus_inst*,struct hfi_frame_data*) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_session_fill_buffer_pkt*) ;

__attribute__((used)) static int venus_session_ftb(struct venus_inst *inst,
        struct hfi_frame_data *out_frame)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct hfi_session_fill_buffer_pkt pkt;
 int ret;

 ret = pkt_session_ftb(&pkt, inst, out_frame);
 if (ret)
  return ret;

 return venus_iface_cmdq_write(hdev, &pkt);
}
