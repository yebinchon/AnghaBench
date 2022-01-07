
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hva_enc {int (* open ) (struct hva_ctx*) ;int name; } ;
struct hva_dev {int instance_id; } ;
struct hva_ctx {int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,char*,...) ;
 int dev_err (struct device*,char*,int ,...) ;
 scalar_t__ hva_find_encoder (struct hva_ctx*,int ,int ) ;
 int snprintf (int ,int,char*,int,char*) ;
 int stub1 (struct hva_ctx*) ;

__attribute__((used)) static int hva_open_encoder(struct hva_ctx *ctx, u32 streamformat,
       u32 pixelformat, struct hva_enc **penc)
{
 struct hva_dev *hva = ctx_to_hdev(ctx);
 struct device *dev = ctx_to_dev(ctx);
 struct hva_enc *enc;
 int ret;


 enc = (struct hva_enc *)hva_find_encoder(ctx, pixelformat,
       streamformat);
 if (!enc) {
  dev_err(dev, "%s no encoder found matching %4.4s => %4.4s\n",
   ctx->name, (char *)&pixelformat, (char *)&streamformat);
  return -EINVAL;
 }

 dev_dbg(dev, "%s one encoder matching %4.4s => %4.4s\n",
  ctx->name, (char *)&pixelformat, (char *)&streamformat);


 snprintf(ctx->name, sizeof(ctx->name), "[%3d:%4.4s]",
   hva->instance_id, (char *)&streamformat);


 ret = enc->open(ctx);
 if (ret) {
  dev_err(dev, "%s failed to open encoder instance (%d)\n",
   ctx->name, ret);
  return ret;
 }

 dev_dbg(dev, "%s %s encoder opened\n", ctx->name, enc->name);

 *penc = enc;

 return ret;
}
