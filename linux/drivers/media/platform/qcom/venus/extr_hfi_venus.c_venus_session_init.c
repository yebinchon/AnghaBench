
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_init_pkt {int dummy; } ;


 int pkt_session_init (struct hfi_session_init_pkt*,struct venus_inst*,int ,int ) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_flush_debug_queue (struct venus_hfi_device*) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_session_init_pkt*) ;

__attribute__((used)) static int venus_session_init(struct venus_inst *inst, u32 session_type,
         u32 codec)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct hfi_session_init_pkt pkt;
 int ret;

 ret = pkt_session_init(&pkt, inst, session_type, codec);
 if (ret)
  goto err;

 ret = venus_iface_cmdq_write(hdev, &pkt);
 if (ret)
  goto err;

 return 0;

err:
 venus_flush_debug_queue(hdev);
 return ret;
}
