
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;


 int HFI_CMD_SESSION_RELEASE_RESOURCES ;
 int venus_session_cmd (struct venus_inst*,int ) ;

__attribute__((used)) static int venus_session_release_res(struct venus_inst *inst)
{
 return venus_session_cmd(inst, HFI_CMD_SESSION_RELEASE_RESOURCES);
}
