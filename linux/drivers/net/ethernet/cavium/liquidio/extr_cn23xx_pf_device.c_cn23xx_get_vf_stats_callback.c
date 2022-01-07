
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mbox_cmd {int data; } ;
struct octeon_device {int dummy; } ;
struct oct_vf_stats_ctx {int status; int stats; } ;
struct oct_vf_stats {int dummy; } ;


 int atomic_set (int *,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
cn23xx_get_vf_stats_callback(struct octeon_device *oct,
        struct octeon_mbox_cmd *cmd, void *arg)
{
 struct oct_vf_stats_ctx *ctx = arg;

 memcpy(ctx->stats, cmd->data, sizeof(struct oct_vf_stats));
 atomic_set(&ctx->status, 1);
}
