
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_mjpeg_ctx {int dummy; } ;
struct delta_ctx {struct delta_mjpeg_ctx* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct delta_mjpeg_ctx* kzalloc (int,int ) ;

__attribute__((used)) static int delta_mjpeg_open(struct delta_ctx *pctx)
{
 struct delta_mjpeg_ctx *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 pctx->priv = ctx;

 return 0;
}
