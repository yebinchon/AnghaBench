
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_ipc_header_msg {int command; int copro_hdl; int host_hdl; int tag; } ;
struct delta_ipc_ctx {int copro_hdl; } ;
typedef enum delta_ipc_fw_command { ____Placeholder_delta_ipc_fw_command } delta_ipc_fw_command ;


 int IPC_SANITY_TAG ;
 int to_host_hdl (struct delta_ipc_ctx*) ;

__attribute__((used)) static void build_msg_header(struct delta_ipc_ctx *ctx,
        enum delta_ipc_fw_command command,
        struct delta_ipc_header_msg *header)
{
 header->tag = IPC_SANITY_TAG;
 header->host_hdl = to_host_hdl(ctx);
 header->copro_hdl = ctx->copro_hdl;
 header->command = command;
}
