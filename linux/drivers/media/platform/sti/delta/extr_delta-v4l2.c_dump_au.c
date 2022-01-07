
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;
struct TYPE_3__ {int index; } ;
struct TYPE_4__ {TYPE_1__ vb2_buf; } ;
struct delta_au {int size; int dts; TYPE_2__ vbuf; scalar_t__ vaddr; } ;


 int dev_dbg (int ,char*,int ,int ,int ,int,int,int *,...) ;

__attribute__((used)) static void dump_au(struct delta_ctx *ctx, struct delta_au *au)
{
 struct delta_dev *delta = ctx->dev;
 u32 size = 10;
 u8 *data = (u8 *)(au->vaddr);

 if (au->size <= (size * 2))
  dev_dbg(delta->dev, "%s dump au[%d] dts=%lld size=%d data=%*ph\n",
   ctx->name, au->vbuf.vb2_buf.index, au->dts, au->size,
   au->size, data);
 else
  dev_dbg(delta->dev, "%s dump au[%d] dts=%lld size=%d data=%*ph..%*ph\n",
   ctx->name, au->vbuf.vb2_buf.index, au->dts, au->size,
   size, data, size, data + au->size - size);
}
