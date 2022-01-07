
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int ,int *,int ,void*,unsigned int,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;

__attribute__((used)) static int ezusb_read_ltv(struct hermes *hw, int bap, u16 rid,
     unsigned bufsize, u16 *length, void *buf)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;

 if (bufsize % 2)
  return -EINVAL;

 ctx = ezusb_alloc_ctx(upriv, rid, rid);
 if (!ctx)
  return -ENOMEM;

 return ezusb_access_ltv(upriv, ctx, 0, ((void*)0), EZUSB_FRAME_CONTROL,
    buf, bufsize, length);
}
