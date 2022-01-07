
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct b43_request_fw_context {TYPE_1__* dev; struct firmware const* blob; } ;
struct TYPE_2__ {int fw_load_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void b43_fw_cb(const struct firmware *firmware, void *context)
{
 struct b43_request_fw_context *ctx = context;

 ctx->blob = firmware;
 complete(&ctx->dev->fw_load_complete);
}
