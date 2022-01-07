
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct delta_frame {int field; int flags; int dts; int index; scalar_t__ vaddr; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;


 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int,int *) ;
 int frame_field_str (int ) ;
 int frame_type_str (int ) ;

__attribute__((used)) static void dump_frame(struct delta_ctx *ctx, struct delta_frame *frame)
{
 struct delta_dev *delta = ctx->dev;
 u32 size = 10;
 u8 *data = (u8 *)(frame->vaddr);

 dev_dbg(delta->dev, "%s dump frame[%d] dts=%lld type=%s field=%s data=%*ph\n",
  ctx->name, frame->index, frame->dts,
  frame_type_str(frame->flags),
  frame_field_str(frame->field),
  size, data);
}
