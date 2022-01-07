
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;
typedef int data ;
typedef char const __le32 ;


 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int EZUSB_RID_ACK ;
 int EZUSB_RID_PROG_BYTES ;
 int EZUSB_RID_PROG_SET_ADDR ;
 char cpu_to_le32 (int) ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int,char const*,int ,int *,int ,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;

__attribute__((used)) static int ezusb_program_bytes(struct hermes *hw, const char *buf,
          u32 addr, u32 len)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;
 __le32 data = cpu_to_le32(addr);
 int err;

 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_PROG_SET_ADDR, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 err = ezusb_access_ltv(upriv, ctx, sizeof(data), &data,
          EZUSB_FRAME_CONTROL, ((void*)0), 0, ((void*)0));
 if (err)
  return err;

 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_PROG_BYTES, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 return ezusb_access_ltv(upriv, ctx, len, buf,
    EZUSB_FRAME_CONTROL, ((void*)0), 0, ((void*)0));
}
