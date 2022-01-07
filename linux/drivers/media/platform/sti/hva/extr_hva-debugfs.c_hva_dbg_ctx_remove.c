
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_ctx; } ;
struct hva_dev {TYPE_1__ dbg; } ;
struct TYPE_4__ {int debugfs_entry; } ;
struct hva_ctx {int flags; TYPE_2__ dbg; struct hva_dev* hva_dev; } ;


 int HVA_FLAG_STREAMINFO ;
 int debugfs_remove (int ) ;
 int memcpy (int *,struct hva_ctx*,int) ;

void hva_dbg_ctx_remove(struct hva_ctx *ctx)
{
 struct hva_dev *hva = ctx->hva_dev;

 if (ctx->flags & HVA_FLAG_STREAMINFO)

  memcpy(&hva->dbg.last_ctx, ctx, sizeof(*ctx));

 debugfs_remove(ctx->dbg.debugfs_entry);
}
