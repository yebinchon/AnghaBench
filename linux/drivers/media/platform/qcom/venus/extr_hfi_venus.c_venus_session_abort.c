
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;


 int HFI_CMD_SYS_SESSION_ABORT ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_flush_debug_queue (struct venus_hfi_device*) ;
 int venus_session_cmd (struct venus_inst*,int ) ;

__attribute__((used)) static int venus_session_abort(struct venus_inst *inst)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);

 venus_flush_debug_queue(hdev);

 return venus_session_cmd(inst, HFI_CMD_SYS_SESSION_ABORT);
}
