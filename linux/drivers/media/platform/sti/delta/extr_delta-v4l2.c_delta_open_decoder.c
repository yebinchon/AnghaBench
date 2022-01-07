
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct delta_dev {int instance_id; int dev; } ;
struct delta_dec {int name; } ;
struct TYPE_2__ {int pixelformat; } ;
struct delta_ctx {int name; TYPE_1__ frameinfo; struct delta_dev* dev; } ;


 int EINVAL ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*) ;
 struct delta_dec* delta_find_decoder (struct delta_ctx*,int ,int ) ;
 int dev_dbg (int ,char*,int ,char*,...) ;
 int dev_err (int ,char*,int ,...) ;
 int open ;
 int snprintf (int ,int,char*,int,char*) ;

__attribute__((used)) static int delta_open_decoder(struct delta_ctx *ctx, u32 streamformat,
         u32 pixelformat, const struct delta_dec **pdec)
{
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec;
 int ret;

 dec = delta_find_decoder(ctx, streamformat, ctx->frameinfo.pixelformat);
 if (!dec) {
  dev_err(delta->dev, "%s no decoder found matching %4.4s => %4.4s\n",
   ctx->name, (char *)&streamformat, (char *)&pixelformat);
  return -EINVAL;
 }

 dev_dbg(delta->dev, "%s one decoder matching %4.4s => %4.4s\n",
  ctx->name, (char *)&streamformat, (char *)&pixelformat);


 snprintf(ctx->name, sizeof(ctx->name), "[%3d:%4.4s]",
   delta->instance_id, (char *)&streamformat);


 ret = call_dec_op(dec, open, ctx);
 if (ret) {
  dev_err(delta->dev, "%s failed to open decoder instance (%d)\n",
   ctx->name, ret);
  return ret;
 }

 dev_dbg(delta->dev, "%s %s decoder opened\n", ctx->name, dec->name);

 *pdec = dec;

 return ret;
}
